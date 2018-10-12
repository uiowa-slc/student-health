<?php

use SilverStripe\Control\Director;
use SilverStripe\Security\Permission;
use SilverStripe\Security\Security;
use SilverStripe\Dev\BuildTask;
class FixHealthAnswerTags extends BuildTask {
 
    protected $title = 'Fix Health Answers Tags';
    protected $description = 'Updates all Health Answer tags to match their parent page\'s title';
    protected $enabled = true;

    function init() { 
          parent::init(); 
          // Unless called from the command line, all CliControllers need ADMIN privileges 
          if(!Director::is_cli() && !Permission::check("ADMIN")) { 
             return Security::permissionFailure(); 
          } 
    }
    function run($request) {
        $this->fixTags();
    }

    function fixTags() {
        $healthAnswers = HealthAnswer::get();

        foreach($healthAnswers as $healthAnswer){
            echo "<li>working on".$healthAnswer->Title;
            $parent = $healthAnswer->getParent();
            echo "<li>setting tags to".$parent->Title."</li></li>";
            $healthAnswer->Tags = $parent->Title;
            $healthAnswer->write();
            $healthAnswer->doPublish();

        }
    
    }
}
