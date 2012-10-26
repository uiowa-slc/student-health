<?php 



if( ($teaser) && ($is_front)):?>
	<?php print $node->field_image[0]['view'] ?>
	
	

	<h5><a href="<?php print $node_url ?>"><?php print $title; ?></a></h5>
	
	<p>
	<?php print trim_text( $node->content['body']['#value'], 15 ); ?></p>
	
	<span class="more"><a href="<?php print $node_url ?>" title="read more">Read More</a></span>
	
	

<?php elseif( ($teaser)):?>
	<a href="<?php print $node_url ?>"><?php print $node->field_image[0]['view'] ?></a>
	<h2><a href="<?php print $node_url ?>"><?php print $title; ?></a></h2>
	<p class="date"><?php print $date?></p>
	<p><?php print trim_text( $node->content['body']['#value'], 25 ); ?></p>
	<span class="more"><a href="<?php print $node_url ?>" title="read more">Read More</a></span>

	<?php else:?>
	
	<?php print $node->field_image[0]['view'] ?>
	<?php print $node->content['body']['#value'];  ?>
<?php endif?>








