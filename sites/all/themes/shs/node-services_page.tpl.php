<!-- services page -->
<?php if( ($teaser)):?>

<h2><a href="<?php print $node_url ?>" ><?php print $title; ?></a></h2>
<?php print $node->field_services_image[0]['view'] ?>
<p><?php
print trim_text( $node->content['body']['#value'], 7 ); 
?></p>
<span class="more"><a href="<?php print $node_url ?>" title="read more">Read More</a></span>


<?php else:?>

<?php print $node->field_services_image[0]['view'] ?>
<?php print $node->content['body']['#value']; ?>
<?php endif?>



