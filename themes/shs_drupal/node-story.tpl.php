<!-- news page -->
<?php if( ($teaser) && ($is_front)):?>
<h4>Question</h4>

<p><?php
print trim_text( $node->field_question[0]['view'], 55 ); 
?></p>
<p class="more"><a href="<?php print $node_url ?>" title="read more">Read the Answer</a></p>
<p class="ask"><a href="/health-answers/ask-your-question" title="Ask Your Question">Ask Your Question</a></p>

<?php elseif( ($teaser)):?>
<div class="story">
<?php print $node->field_news_image[0]['view'] ?>
<h2><a href="<?php print $node_url ?>"><?php print $title; ?></a></h2>
<p class="date"><?php print $date?></p><br />
<h3>Question</h3>
<p><?php print $node->field_question[0]['view'] ?></p>
<p class="more"><a href="<?php print $node_url ?>" title="read more">Read the Answer</a></p>
</div>

<?php else:?>
<h2>Question</h2>
<p><?php print $node->field_question[0]['view'] ?></p>
<h2>Answer</h2>
<p><?php print $node->content['body']['#value']; ?></p>


<?php endif?>




