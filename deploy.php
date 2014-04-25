<?php

$output = shell_exec('git pull');
echo "<pre>$output</pre>";

$output = shell_exec('php ~/composer.phar install');
echo "<pre>$output</pre>";

$output = shell_exec('php framework/cli-script.php dev/build "flush=1"');
echo "<pre>$output</pre>";
?>
