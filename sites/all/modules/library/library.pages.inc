<?php

/**
 * @file
 * Functions for generating page displays related to the library module
 */

function library_transaction_form(&$form_state, $aid, $item = NULL) {
  $patron_uid = arg(4);
  global $user;
  $librarian = user_access('access user profiles', $user) && user_access('administer transactions', $user);

  if ($patron_uid && $patron_uid == $user->uid) {
    $patron = $user;
  }
  elseif ($patron_uid && is_numeric($patron_uid) && $librarian) {
    $patron = user_load($patron_uid);
  }
  elseif ($librarian == FALSE) {
    $patron = $user;
  }
  
  if ($aid) {
    $action = library_get_action($aid);
    if ($action->name) {
      drupal_set_title($action->name);
    }
    else {
      drupal_set_message('Invalid action.', 'error');
      drupal_goto('');
    }
  }
  else {
    drupal_set_message('No action was selected.', 'error');
    drupal_goto('');
  }

  $form = array();

  $form['action_aid'] = array(
    '#type' => 'value',
    '#value' => $action->aid,
  );
  $form['action_name'] = array(
    '#type' => 'value',
    '#value' => $action->name,
  );
  $form['action_status_change'] = array(
    '#type' => 'value',
    '#value' => $action->status_change,
  );
  
  if ($item) {
    $form['item_id'] = array(
      '#type' => 'value',
      '#value' => $item->id,
    );
    $form['item_id_set'] = array(
      '#type' => 'value',
      '#value' => $item->id,
    );
    $form['item_display'] = array(
      '#type' => 'item',
      '#title' => t('Item'),
      '#value' => $item->title,
    );
  }
  else {
    $form['item_id'] = library_autocomplete_input($item);
  }
  
  if ($patron) {
    $form['patron_uid'] = array(
      '#type' => 'value',
      '#value' => $patron->uid,
    );
    $form['patron_uid_set'] = array(
      '#type' => 'value',
      '#value' => $patron->uid,
    );
    $form['patron_display'] = array(
      '#type' => 'item',
      '#value' => $patron->name,
      '#title' => t('Patron'),
    );
    if ($librarian && $action->status_change == LIBRARY_ACTION_NO_CHANGE) {
      $link = 'library-items/transaction/'. $action->aid;
      if ($item) {
        $link .= '/'. $item->id;
      }
      $form['patron_change_link'] = array(
        '#type' => 'item',
        '#value' => 'Change Patron',
        '#prefix' => '<a href="'. url($link) .'">',
        '#suffix' => '</a>',
      );
    }
  }
  elseif (variable_get('library_disable_patron_autocomplete', 0) == 1){
    $form['patron_uid'] = array(
      '#type' => 'textfield',
      '#title' => t('Patron'),
      '#default_value' => '',
      '#required' => TRUE
    );    
  }
  else {
    $form['patron_uid'] = array(
      '#type' => 'textfield',
      '#title' => t('Patron'),
      '#default_value' => ($patron ? $patron->name .' [uid:'. $patron->uid .']' : ''),
      '#autocomplete_path' => 'patrons/autocomplete',
      '#required' => TRUE
    );
  }

  $form['notes'] = array(
    '#type' => 'textarea',
    '#title' => t('Message'),
    '#required' => FALSE,
    '#maxlength' => 250, 
    '#default_value' => '',
    '#description' => t('If you are reserving an item, make sure to include the date and time you would like it to be ready.'),
  );
  $form['submit'] = array(
    '#type' => 'submit',
    '#value' => t($action->name),
  );
  $form['#validate'][] = 'library_transaction_form_validate';
  $form['#submit'][] = 'library_transaction_form_submit';
  
  return $form;
}

/**
 * Handles transaction form submissions.
 *
 * @see library_transaction_form()
 */
function library_transaction_form_validate($form, &$form_state) {
  $barcodes = variable_get('library_item_barcodes', LIBRARY_NO_BARCODES) == LIBRARY_BARCODES;
  $autocomplete_disabled = variable_get('library_disable_patron_autocomplete', 0) == 1;
  //Validate patron information
  if ($form_state['values']['patron_uid']) {
    if ($form_state['values']['patron_uid_set'] && is_numeric($form_state['values']['patron_uid'])) {
      $uid = $form_state['values']['patron_uid'];
      $patron = user_load($uid);
      if (empty($patron)) {
        form_set_error('patron_uid', t('Invalid Patron User ID.'));
      }
    }
    elseif ($autocomplete_disabled && !empty($form_state['values']['patron_uid'])) {
      $patron = user_load(array('name' => $form_state['values']['patron_uid']));
      if (empty($patron)) {
        form_set_error('patron_uid', t('Library Patron: Could not find a corresponding Drupal user.'));
      }
    }
    else {
      preg_match('/^(?:\s*|(.*) )?\[\s*uid\s*:\s*(\d+)\s*\]$/', $form_state['values']['patron_uid'], $matches);
      if (!empty($matches)) {
        // explicit uid
        list($temp, $name, $uid) = $matches;
        $patron = user_load($uid);
        if (empty($patron)) {
          form_set_error('patron_uid', t('Library Patron: Could not find a corresponding Drupal user.'));
        }
      }
    }
    if (!empty($patron)) {
      $form_state['values']['patron_email'] = $patron->mail;
      $form_state['values']['patron_uid'] = $patron->uid;
      $form_state['values']['patron_name'] = $patron->name;
    }
    else {
      form_set_error('patron_uid', t('You must specify a library patron.'));
    }
  }
  else {
    form_set_error('patron_uid', t('You must specify a library patron.'));
  }
  
  if ($form_state['values']['item_id']) {
    if ($form_state['values']['item_id_set'] && is_numeric($form_state['values']['item_id'])) {
      $item = library_load($form_state['values']['item_id']);
    }
    elseif ($barcodes) {
      $item = library_get_item_by_barcode(check_plain($form_state['values']['item_id']));
    }
    else {
      preg_match('/^(?:\s*|(.*))?\[\s*id\s*:\s*(\d+)\s*\]$/', $form_state['values']['item_id'], $matches);
      if (!empty($matches)) {
        list($temp, $title, $id) = $matches;
        $item = library_load($id);
        if ((isset($item) && !empty($title) && (strcasecmp(rtrim(check_plain($title)), rtrim(check_plain($item->title))) != 0)) || empty($item)) {
          form_set_error('item_id', t('Library Item : Title mismatch. Please check your selection.'));
        }
      }
      else {
        form_set_error('item_id', t('You must specify a valid library item.'));
      }
    }
    if (!empty($item)) {
      $form_state['values']['item_id'] = $item->id;
      $form_state['values']['item_name'] = $item->title;
      $form_state['values']['nid'] = $item->nid;
      $form_state['values']['barcode'] = $item->barcode;
      $form_state['values']['node_type'] = $item->type;
    }
    if ($form_state['values']['action_aid']) {
      if ($item->in_circulation == LIBRARY_REFERENCE_ONLY && $action->status_change <> LIBRARY_ACTION_NO_CHANGE) {
        form_set_error('action_aid', t('This item is not in circulation.'));
      } 
      elseif ($item->library_status == LIBRARY_ITEM_AVAILABLE && $action->status_change == LIBRARY_ITEM_TYPE_AVAILABLE) {
        form_set_error('action_aid', t('This item is already available.'));
      }
      elseif ($item->library_status == LIBRARY_ITEM_UNAVAILABLE &&  $action->status_change == LIBRARY_ITEM_TYPE_UNAVAILABLE) {
        form_set_error('action_aid', t('This item is not currently available.'));
      }
      elseif ($item->library_status == LIBRARY_ITEM_UNAVAILABLE && $patron->uid <> $item->last_patron_uid) {
        form_set_error('patron_uid', t('This item was made unavailable by a different patron.  That patron must release the item first.'));
      }
    }  
  }
}

/**
 * Handles transaction form submissions.
 *
 * @see library_transaction_form()
 */
function library_transaction_form_submit($form, &$form_state) {
  $now = time();
  $duedate = NULL;
  $clean = library_clean_action_name($form_state['values']['action_name']);
  if ($form_state['values']['action_status_change'] == LIBRARY_ACTION_TYPE_UNAVAILABLE) {
    $type = $form_state['values']['node_type'];
    $period = variable_get('library_period_for_'. $type .'_'. $clean, 0);
    if ($period > 0) {
      $duedate = library_get_due_date($now, $clean, $type);
    }
    $new_status = LIBRARY_ITEM_UNAVAILABLE;
  }
  elseif ($form_state['values']['action_status_change'] == LIBRARY_ACTION_TYPE_AVAILABLE) {
    $new_status = LIBRARY_ITEM_AVAILABLE;   
  }
  db_query("INSERT {library_transactions} (nid, item_id, uid, action_aid, duedate, notes, created) VALUES (%d, %d, %d, %d, %d, '%s', %d)", $form_state['values']['nid'], $form_state['values']['item_id'], $form_state['values']['patron_uid'], $form_state['values']['action_aid'], $duedate, check_plain($form_state['values']['notes']), $now);
  if ($form_state['values']['action_status_change'] > LIBRARY_ACTION_NO_CHANGE) {
    db_query("UPDATE {library} set library_status = %d WHERE id = %d", $new_status, $form_state['values']['item_id']);
  }

  drupal_set_message(t('The '. $form_state['values']['action_name'] .' was successful.'));
  if (module_exists('trigger')) {
    $transaction_id = db_last_insert_id('library_transactions', 'tid');
    $context = array();
    $object = (object) $context;
    $context['item'] = array(
      'id' => $form_state['values']['item_id'], 'nid' => $form_state['values']['nid'], 'title' => $form_state['values']['item_name'], 'barcode' => $form_state['values']['barcode'], 'node_type' => $form_state['values']['node_type']
    );
    $context['transaction'] = array('id' => $transaction_id, 'action_name' => $form_state['values']['action_name'], 'aid' => $form_state['values']['action_aid'], 'notes' => check_plain($form_state['values']['notes']), 'duedate' => $duedate, 'created' => $now);
    $context['patron'] = array('name' => $form_state['values']['patron_name'], 'mail' => $form_state['values']['patron_email'], 'uid' => $form_state['values']['patron_uid']);
    $actions = _library_get_hook_aids('library', 'after_'. $clean);
    if (!empty($actions)) {
      actions_do($actions, $object, $context);
    }
  }
  $form_state['redirect'] = 'node/'. $form_state['values']['nid'];
  return;
}

function library_transaction_view($tid) {
  global $user;
  $transaction = library_get_transaction_by_tid($tid);
  if (isset($transaction)) {
    $list[] = t("Date: @action_date", array('@action_date' => format_date($transaction->created, 'custom', 'M j, Y')));
    $list[] = t("Item: ". l($transaction->item_name, 'node/'. $transaction->nid));
    $list[] = t("Action: @action", array('@action' => $transaction->action_name));
    if (user_access('access user profiles', $user)) {
      $list[] = t("Patron: ". l($transaction->username, 'user/'. $transaction->uid));
    }
    else {
      $list[] = t("Patron: N/A");
    }
    if (!empty($transaction->duedate)) {
      $list[] = t('Due Date: @due_date', array('@due_date' => format_date($transaction->duedate, 'custom', 'M j, Y')));
    }
    if (!empty($transaction->notes)) {
      $list[] = $transaction->notes;
    }
    return theme('item_list', $list);
  }
  else {
    drupal_set_message(t('No transaction found.'), array());
  }
}

/**
 * Menu callback; show the transaction history of a single node.
 */
function library_history($node) { 
  $duedate_enabled = library_duedates_enabled($node->type);  

  if (library_item_in_library($node)) {
    $header = array(t('Date'), t('Transaction'), t('Notes'));
    if (user_access('access user profiles')) {
      $header[] = t('Patron');
    }
    if ($duedate_enabled) {
      $header[] = t('Due Date');
    }
    $header[] = t('Actions');
    $rows = array();

    $transactions = library_get_transactions_by_node($node);

    if (!empty($transactions[0])) {
      foreach ($transactions as $value) {
        $last_item = '';
        foreach ($value as $transaction) {
          $detail_link = '';
          $action_link = '';
          $cur_item = $transaction->item_id;
          $created = format_date($transaction->created, 'small');
          if ($duedate_enabled && $cur_item <> $last_item && !empty($transaction->duedate)) {
            $duedate = format_date($transaction->duedate, 'small');
          }
          elseif ($duedate_enabled) {
            $duedate = '';
          }
          if (user_access('administer transactions')) {
            $detail_link = l('View Details', 'library-items/transaction/view/'. $transaction->tid);
          }
          if ($cur_item <> $last_item) {
            $item = array('id' => $transaction->item_id, 'library_status' => $transaction->library_status, 'last_patron_uid' => $transaction->uid, 'in_circulation' => $transaction->in_circulation);
            $links = library_get_action_links($item);
            if (!empty($links)) {
              $action_link = implode(" | ", $links);
            }
          } 
          $temp_array = array($created, $transaction->action_name, $transaction->notes);
          if (user_access('access user profiles')) {
            $patron_link = l($transaction->username, 'user/'. $transaction->uid);
            $temp_array[] = $patron_link;
          }
          if (isset($duedate)) { 
            $temp_array[] = $duedate; 
          }
          if (!empty($detail_link) && !empty($action_link)) {
            $temp_array[] = $detail_link .' | '. $action_link;
          }
          elseif (!empty($action_link)) {
            $temp_array[] = $action_link;
          }
          elseif (!empty($detail_link)) {
            $temp_array[] = $detail_link;
          }
          else {
            $temp_array[] = '';
          }
          $rows[] = $temp_array;
          $last_item = $cur_item;
        }
      }
      return theme('table', $header, $rows);
    }
    else {
      return "<p>No actions have been performed on this item.</p>";
    }
  }
  else {
    return "<p>This item type is not part of the library.</p>";
  }
}

/**
 * Menu callback; show the transaction history of a single user.
 */
function library_history_user($patron) { 
  $duedate_enabled = library_duedates_enabled($node->type);  

  $header = array(t('Date'), t('Item'), t('Transaction'), t('Notes'));
  if ($duedate_enabled) {
    $header[] = t('Due Date');
  }
  $header[] = t('Actions');
  $rows = array();

  $transactions = library_get_transactions_by_user($patron);

  if (!empty($transactions)) {
    $last_item = '';
    foreach ($transactions as $transaction) {
      $detail_link = '';
      $action_link = '';
      $cur_item = $transaction->item_id;
      $created = format_date($transaction->created, 'small');
      if ($duedate_enabled && $cur_item <> $last_item && !empty($transaction->duedate)) {
        $duedate = format_date($transaction->duedate, 'small');
      }
      elseif ($duedate_enabled) {
        $duedate = '';
      }
      if (user_access('administer transactions', $user)) {
        $detail_link = l('View Details', 'library-items/transaction/view/'. $transaction->tid);
      }
      if ($cur_item <> $last_item) {
        $item = array('id' => $transaction->item_id, 'library_status' => $transaction->library_status, 'last_patron_uid' => $transaction->uid, 'in_circulation' => $transaction->in_circulation);
        $links = library_get_action_links($item);
        if (!empty($links)) {
          $action_link = implode(" | ", $links);
        }
      } 
      $temp_array = array($created, l($transaction->item_name, 'node/'. $transaction->nid), $transaction->action_name, $transaction->notes);
      if (isset($duedate)) { 
        $temp_array[] = $duedate; 
      }
      if (!empty($detail_link) && !empty($action_link)) {
        $temp_array[] = $detail_link .' | '. $action_link;
      }
      elseif (!empty($action_link)) {
        $temp_array[] = $action_link;
      }
      elseif (!empty($detail_link)) {
        $temp_array[] = $detail_link;
      }
      else {
        $temp_array[] = '';
      }
      $rows[] = $temp_array;
      $last_item = $cur_item;
    }
    return theme('table', $header, $rows);
  }
  else {
    return "<p>This user has not performed any library actions.</p>";
  }
}

function library_display_items() {
  $var = library_get_table_header();
  $header = $var['header'];

  $nodes = library_get_items_group_by_node();
  $rows = array();
  foreach ($nodes as $node) {
    $node_rows = library_get_table_row($node, $var);
    foreach ($node_rows as $row) {
      $rows[] = $row;
    }
  }
  $output = theme('table', $header, $rows, array('class' => 'library-list'));
  $output .= theme('pager', NULL, LIBRARY_RESULTS_PER_PAGE);
  return $output;
}

function library_overdue_items() {
  if (library_duedates_enabled()) {
    $records = library_get_overdue_items();
    if (empty($records)) {
      return "<p>No overdue items at this time.</p>";
    }
    else {
      $header = array(t('Title'), t('Patron'), t('Due Date'), t('Actions'));
      $rows = array();
      foreach ($records as $patron_id => $record) {
        $patron_name = $record['patron']['patron_name'];
        $patron_email = $record['patron']['patron_email'];
        foreach ($record['items'] as $id => $values) {
          $item = array('library_status' => LIBRARY_ITEM_UNAVAILABLE, 'id' => $id, 'last_patron_uid' => $patron_id, 'in_circulation' => $values['in_circulation']);
          $links = implode(" | ", library_get_action_links($item));

          $rows[] = array($values['item_name'], $patron_name, format_date($values['due_date'], 'small'), l('Item Details', 'node/'. $values['nid']) .' | '. $links);
          $item = array();
        }
      }
      $output = theme('table', $header, $rows);
      $output .= theme('pager', NULL, LIBRARY_RESULTS_PER_PAGE, 0);
      return $output;
    }
  }
  else {
    return "<p>Library due dates are not enabled.</p>";
  }
}