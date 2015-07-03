<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
	<title><?php echo ($name); ?> <?php echo ($seo_title); ?> <?php echo ($site_name); ?></title>
	<meta name="keywords" content="<?php echo ($seo_keywords); ?>" />
	<meta name="description" content="<?php echo ($seo_description); ?>">
    	<?php $portal_index_lastnews=2; $portal_hot_articles="1,2"; $portal_last_post="1,2"; $tmpl=sp_get_theme_path(); $default_home_slides=array( array( "slide_name"=>"ThinkCMFX1.6.0发布啦！", "slide_pic"=>$tmpl."Public/images/demo/1.jpg", "slide_url"=>"", ), array( "slide_name"=>"ThinkCMFX1.6.0发布啦！", "slide_pic"=>$tmpl."Public/images/demo/2.jpg", "slide_url"=>"", ), array( "slide_name"=>"ThinkCMFX1.6.0发布啦！", "slide_pic"=>$tmpl."Public/images/demo/3.jpg", "slide_url"=>"", ), ); ?>
	<meta name="author" content="senmiao">
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    
    <!-- Set render engine for 360 browser -->
    <meta name="renderer" content="webkit">

   	<!-- No Baidu Siteapp-->
    <meta http-equiv="Cache-Control" content="no-siteapp"/>

    <!-- HTML5 shim for IE8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <![endif]-->
	<link rel="icon" href="/senmiao/tpl/s_tpl/Public/images/logo.bmp" type="image/x-icon">
	<link rel="shortcut icon" href="/senmiao/tpl/s_tpl/Public/images/logo.bmp" type="image/x-icon">
    <link href="/senmiao/tpl/s_tpl/Public/simpleboot/themes/cmf/theme.min.css" rel="stylesheet">
    <link href="/senmiao/tpl/s_tpl/Public/simpleboot/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
    <link href="/senmiao/tpl/s_tpl/Public/simpleboot/font-awesome/4.2.0/css/font-awesome.min.css"  rel="stylesheet" type="text/css">
	<!--[if IE 7]>
	<link rel="stylesheet" href="/senmiao/tpl/s_tpl/Public/simpleboot/font-awesome/4.2.0/css/font-awesome-ie7.min.css">
	<![endif]-->
	<link href="/senmiao/tpl/s_tpl/Public/css/style.css" rel="stylesheet">
	<style>
		/*html{filter:progid:DXImageTransform.Microsoft.BasicImage(grayscale=1);-webkit-filter: grayscale(1);}*/
		#backtotop{position: fixed;bottom: 50px;right:20px;display: none;cursor: pointer;font-size: 50px;z-index: 9999;}
		#backtotop:hover{color:#333}
		#main-menu-user li.user{display: none}
	</style>
	
</head>
<body>
<?php echo hook('body_start');?>
<div class="navbar navbar-fixed-top">
   <div class="navbar-inner">
     <div class="container">
       <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
       </a>
       <a class="brand" href="/senmiao/"><img src="/senmiao/tpl/s_tpl/Public/images/logo.png"/></a>
       <div class="nav-collapse collapse" id="main-menu">
       	<?php
 $effected_id=""; $filetpl="<a href='\$href' target='\$target'>\$label</a>"; $foldertpl="<a href='\$href' target='\$target' class='dropdown-toggle' data-toggle='dropdown'>\$label <b class='caret'></b></a>"; $ul_class="dropdown-menu" ; $li_class="" ; $style="nav"; $showlevel=6; $dropdown='dropdown'; echo sp_get_menu("main",$effected_id,$filetpl,$foldertpl,$ul_class,$li_class,$style,$showlevel,$dropdown); ?>


		<div class="pull-right" style="margin-top: -10px">
        	<form method="post" class="form-inline" action="<?php echo U('portal/search/index');?>" style="margin:18px 0;">
				 <input type="text" class="" placeholder="Search" name="keyword" value="<?php echo I('get.keyword');?>"/>
				 <input type="submit" class="btn btn-info" value="Go" style="margin:0"/>
			</form>
		</div>
       </div>
     </div>
   </div>
 </div>
<div class="container"style="margin-top: 60px">
    <div class="row ">
        <img src="/senmiao/tpl/s_tpl/Public/images/flash_back.png" class="span12 tc-box    ">
    </div>

    <div class="row">
        <div class="span3 nav-left">
            <div class="nav-collapse collapse "  style="margin-top: 20px;font-size: 16px  ">

                <h3 style="color:#1963aa ">园林景观</h3>
                <?php
 $id=3; $effected_id=4; $myid=3; $filetpl="<a href='\$href' target='\$target'>\$label</a>"; $foldertpl="<a href='\$href' target='\$target' class='dropdown-toggle' data-toggle='dropdown'>\$label <b class='caret'></b></a>"; $ul_class="dropdown-menu" ; $li_class="" ; $style="nav nav-list "; $showlevel=6; $dropdown='dropdown'; echo sp_get_menu(2,$effected_id,$filetpl,$foldertpl,$ul_class,$li_class,$style,$showlevel,$dropdown); ?>


            </div>
        </div>
        <div class="span9 tc-box ">
       <div class="container">

        <div class="pg-opt pin">
            <div class="container">
                <h2><?php echo ($name); ?></h2>
            </div>
        </div>
        <div>
             <?php $lists = sp_sql_posts_paged("cid:$cat_id;order:post_date DESC;",20); ?>
             <div id="container">
             	<div class="grid-sizer"></div>
             	<?php if(is_array($lists['posts'])): $i = 0; $__LIST__ = $lists['posts'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; $smeta=json_decode($vo['smeta'], true); ?>
             	 
                <div class="item">
					<div class="tc-gridbox">
                        <div class="header">
                            
                      	<?php if(!empty($smeta['thumb'])): ?><div class="item-image">
                      		<a href="<?php echo leuu('article/index',array('id'=>$vo['tid']));?>">
								<img  src="<?php echo sp_get_asset_upload_path($smeta['thumb']);?>" class="img-responsive" alt="<?php echo ($vo["post_title"]); ?>">
							</a>
						</div>
                      	<?php else: endif; ?>
                     
                            <h3><a href="<?php echo leuu('article/index',array('id'=>$vo['tid']));?>"><?php echo ($vo["post_title"]); ?></a></h3>
                            <hr>
                        </div>
                        <div class="body">
                        	<a href="<?php echo leuu('article/index',array('id'=>$vo['tid']));?>"><?php echo (msubstr($vo["post_excerpt"],0,256)); ?></a>
                        </div>
                        <div class="footer">
                        	<div class="pull-left"><span class="meta"><?php echo ($vo["post_date"]); ?></span></div>
                        	<div class="pull-right">
	                        	<a href="javascript:;"><i class="fa fa-eye"></i><span><?php echo ($vo["post_hits"]); ?></span></a>
								<a href="<?php echo U('article/do_like',array('id'=>$vo['object_id']));?>" class="J_count_btn"><i class="fa fa-thumbs-up"></i><span class="count"><?php echo ($vo["post_like"]); ?></span></a>
								<a href="<?php echo U('user/favorite/do_favorite',array('id'=>$vo['object_id']));?>" class="J_favorite_btn" data-title="<?php echo ($vo["post_title"]); ?>" data-url="<?php echo U('portal/article/index',array('id'=>$vo['tid']));?>" data-key="<?php echo sp_get_favorite_key('posts',$vo['object_id']);?>">
									<i class="fa fa-star-o"></i>
								</a>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
                </div><?php endforeach; endif; else: echo "" ;endif; ?>
               </div>
             <div class="pagination">
              <ul>
                  <?php echo ($lists['page']); ?>
              </ul>
             </div>
        </div>
    </div>
        </div>
    </div>
    
    <br><br><br>
<!-- Footer
      ================================================== -->
      <hr>
<?php echo hook('footer');?>
      <div id="footer">
        <div class="links">
        <?php $links=sp_getlinks(); ?>
        <?php if(is_array($links)): foreach($links as $key=>$vo): ?><a href="<?php echo ($vo["link_url"]); ?>" target="<?php echo ($vo["link_target"]); ?>"><?php echo ($vo["link_name"]); ?></a><?php endforeach; endif; ?>
        </div>
        <p>
        Made by <a href="http://www.thinkcmf.com">ThinkCMF</a>
        Code licensed under the <a href="http://www.apache.org/licenses/LICENSE-2.0" rel="nofollow" target="_blank">Apache License v2.0</a>.<br/>
        Based on <a href="http://getbootstrap.com/2.3.2/" target="_blank">Bootstrap</a>.  Icons from <a href="http://fortawesome.github.com/Font-Awesome/" target="_blank">Font Awesome</a>
        </p>
      </div>
      <div id="backtotop"><i class="fa fa-arrow-circle-up"></i></div>
      <?php echo ($site_tongji); ?>

</div>

    
<!-- JavaScript -->
<script type="text/javascript">
//全局变量
var GV = {
    DIMAUB: "/senmiao/",
    JS_ROOT: "statics/js/",
    TOKEN: ""
};
</script>
<!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="/senmiao/statics/js/jquery.js"></script>
    <script src="/senmiao/statics/js/wind.js"></script>
    <script src="/senmiao/tpl/s_tpl/Public/simpleboot/bootstrap/js/bootstrap.min.js"></script>
    <script src="/senmiao/tpl/s_tpl/Public/js/jquery.pin.js"></script>
    <script src="/senmiao/statics/js/frontend.js"></script>
	<script>
	$(function(){
		$('body').on('touchstart.dropdown', '.dropdown-menu', function (e) { e.stopPropagation(); });
		
		$("#main-menu li.dropdown").hover(function(){
			$(this).addClass("open");
		},function(){
			$(this).removeClass("open");
		});


        $(".pined").pin({

        })

		$.post("<?php echo U('user/index/is_login');?>",{},function(data){
			if(data.status==1){
				if(data.user.avatar){
					$("#main-menu-user .headicon").attr("src",data.user.avatar.indexOf("http")==0?data.user.avatar:"/senmiao/data/upload/avatar/"+data.user.avatar);
				}
				
				$("#main-menu-user .user-nicename").text(data.user.user_nicename!=""?data.user.user_nicename:data.user.user_login);
				$("#main-menu-user li.user.login").show();
				
			}
			if(data.status==0){
				$("#main-menu-user li.user.offline").show();
			}
			
		});	
		;(function($){
			$.fn.totop=function(opt){
				var scrolling=false;
				return this.each(function(){
					var $this=$(this);
					$(window).scroll(function(){
						if(!scrolling){
							var sd=$(window).scrollTop();
							if(sd>100){
								$this.fadeIn();
							}else{
								$this.fadeOut();
							}
						}
					});
					
					$this.click(function(){
						scrolling=true;
						$('html, body').animate({
							scrollTop : 0
						}, 500,function(){
							scrolling=false;
							$this.fadeOut();
						});
					});
				});
			};
		})(jQuery); 
		
		$("#backtotop").totop();
		
		
	});
	</script>


 <script src="/senmiao/tpl/s_tpl/Public/js/imagesloaded.pkgd.min.js"></script>
    <script src="/senmiao/tpl/s_tpl/Public/js/masonry.pkgd.min.js"></script>
	<script>
	var $container=$('#container').masonry({
		  columnWidth: '.grid-sizer',
		  itemSelector: '.item'
		});
	// layout Masonry again after all images have loaded
	$container.imagesLoaded( function() {
	  $container.masonry();
	});
	
	</script>
</body>
</html>