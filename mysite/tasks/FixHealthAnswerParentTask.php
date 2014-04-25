<?php
class FixHealthAnswerParent extends BuildTask {
 
    protected $title = 'Fix Health Answers Parents';
    protected $description = 'Updates all Health Answer Parents to ID 12';
    protected $enabled = true;

    function init() { 
          parent::init(); 
          // Unless called from the command line, all CliControllers need ADMIN privileges 
          if(!Director::is_cli() && !Permission::check("ADMIN")) { 
             return Security::permissionFailure(); 
          } 
    }
    function run($request) {
        $this->fixParent();
    }

    function fixParent() {
        $healthAnswers = HealthAnswer::get();

        foreach($healthAnswers as $healthAnswer){
            echo "<li>working on ".$healthAnswer->Title;
            echo "<li>setting parent to 12 </li></li>";
            $healthAnswer->setParent(12);
            $healthAnswer->write();
            $healthAnswer->doPublish();

        }
    
    }
}
