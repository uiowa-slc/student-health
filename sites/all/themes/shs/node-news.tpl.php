<!-- news page -->
<?php if( ($teaser) && ($is_front)):?>
<?php print $node->field_news_image[0]['view'] ?>
<!-- test -->
<?php if( ($node->field_news_external_link[0]['value'])){?>
<h5><a href="<?php print $node->field_news_external_link[0]['view'] ?>"><?php print $title; ?></a></h5>
<?php }else{?>
<h5><a href="<?php print $node_url ?>"><?php print $title; ?></a></h5>
<?php }?>

<p><?php
print trim_text( $node->content['body']['#value'], 15 ); 
?></p>

<?php if( ($node->field_news_external_link[0]['value'])){?>
<span class="more"><a href="<?php print $node->field_news_external_link[0]['view'] ?>" title="read more">Read More</a></span>
<?php }else{?>
<span class="more"><a href="<?php print $node_url ?>" title="read more">Read More</a></span>
<?php }?>




<?php elseif( ($teaser)):?>
<?php print $node->field_news_image[0]['view'] ?>
<h2><a href="<?php print $node_url ?>"><?php print $title; ?></a></h2>
<p class="date"><?php print $date?></p>
<p><?php print trim_text( $node->content['body']['#value'], 25 ); ?></p>
<span class="more"><a href="<?php print $node_url ?>" title="read more">Read More</a></span>



<?php else:?>
<?php print $node->field_news_image[0]['view'] ?>
<?php print $node->content['body']['#value']; ?>
<?php endif?>



