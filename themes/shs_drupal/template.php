<?php
function trim_text($text, $limit) {
  $extra = "...";
  preg_match_all('/(\S+\s+)/',strip_tags($text),$matches);
  if ($limit < count($matches[0])) {
    return rtrim(implode('',array_slice($matches[0],0,$limit))) . $extra;
  } else {
    return $text;
  }
}
/**
* Override or insert PHPTemplate variables into the node template.
*/
function phptemplate_preprocess_node(&$vars) {
  /*
   * If the node is shown on its dedicated page and
   * the node was edited after its creation. 
   */
  if ($vars['page'] && $vars['created'] != $vars['changed']) {
    $time_ago = format_interval(time() - $vars['changed'], 1);
    /* 
     * If the last person who edited the node 
     * is NOT the author who created the node.
     */
    if ($vars['uid'] != $vars['revision_uid']) {
      // Let's get the THEMED name of the last editor.
      $user = user_load(array('uid' => $vars['revision_uid']));
      $edited_by = theme('username', $user);
    }
    /* 
     * If the last person who edited the node 
     * is also the author who created the node,
     * we already have the THEMED name of that person.
     */
    else {
      $edited_by = $vars['name'];
    }
    /* Adding the variable. */
    $vars['last_editor'] = $edited_by;#t('Last edited by !name about @time ago.', 
      #array('!name' => $edited_by, '@time' => $time_ago));
  }
}
?>