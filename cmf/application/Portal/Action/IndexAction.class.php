<?php
namespace Portal\Action;
use Common\Action\HomeBaseAction; 
/**
 * 首页
 */
class IndexAction extends HomeBaseAction {
	
    //首页
	public function index() {
    	$this->display(":index");
    }
    
    function test(){
    	echo unserialize("ddd");
    }

}

?>
