<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
	<html>
	<head>
		<title><?php echo ($site_seo_title); ?> <?php echo ($site_name); ?></title>
		<meta name="keywords" content="<?php echo ($site_seo_keywords); ?>" />
		<meta name="description" content="<?php echo ($site_seo_description); ?>">
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
    <link href="/senmiao/tpl/s_tpl/Public/css/jquery-ui.min.css" rel="stylesheet">
    <link href="/senmiao/tpl/s_tpl/Public/css/slippry/slippry.css" rel="stylesheet">
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
	

		<style>
			.caption-wraper{position: absolute;left:50%;bottom:2em;}
			.caption-wraper .caption{
			position: relative;left:-50%;
			background-color: rgba(0, 0, 0, 0.54);
			padding: 0.4em 1em;
			color:#fff;
			-webkit-border-radius: 1.2em;
			-moz-border-radius: 1.2em;
			-ms-border-radius: 1.2em;
			-o-border-radius: 1.2em;
			border-radius: 1.2em;
			}
			@media (max-width: 767px){
				.sy-box{margin: 12px -20px 0 -20px;}
				.caption-wraper{left:0;bottom: 0.4em;}
				.caption-wraper .caption{
				left: 0;
				padding: 0.2em 0.4em;
				font-size: 0.92em;
				-webkit-border-radius: 0;
				-moz-border-radius: 0;
				-ms-border-radius: 0;
				-o-border-radius: 0;
				border-radius: 0;}
			}
		</style>
	</head>
<body class="body-white">
<?php echo hook('body_start');?>
<div class="navbar navbar-fixed-top">
   <div class="navbar-inner">
     <div class="container">
       <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
         <span class="icon-bar"></span>

       </a>
       <a class="brand" href="/senmiao/"><img src="/senmiao/tpl/s_tpl/Public/images/logo.png" style="width: 180px;height:70px"/></a>
       <div class="nav-collapse collapse" id="main-menu">
       	<?php
 $effected_id=""; $filetpl="<a href='\$href' target='\$target'>\$label</a>"; $foldertpl="<a href='\$href' target='\$target' class='dropdown-toggle' data-toggle='dropdown'>\$label <b class='caret'></b></a>"; $ul_class="dropdown-menu" ; $li_class="" ; $style="nav"; $showlevel=6; $dropdown='dropdown'; echo sp_get_menu("main",$effected_id,$filetpl,$foldertpl,$ul_class,$li_class,$style,$showlevel,$dropdown); ?>


       </div>
     </div>
   </div>
 </div>

<?php $home_slides=sp_getslide("slide_index"); $home_slides=empty($home_slides)?$default_home_slides:$home_slides; ?>
<ul id="homeslider" class="unstyled">
	<?php if(is_array($home_slides)): foreach($home_slides as $key=>$vo): ?><li>
		<div class="caption-wraper">
			<div class="caption"><?php echo ($vo["slide_name"]); ?></div>
		</div>
		<a href="<?php echo ($vo["slide_url"]); ?>"><img src="<?php echo sp_get_asset_upload_path($vo['slide_pic']);?>" alt=""></a>
	</li><?php endforeach; endif; ?>
</ul>

<div class="container backImg ">
       <div class="row">
            <div class="span6">
                <?php $lastnews=sp_sql_posts("cid:1;field:post_title,post_excerpt,post_date,tid,smeta;order:listorder asc;limit:3;"); ?>
                <div class="mainPageBlock">
                    <div class="mainPageBlockTitle">
                        <h1>新闻动态</h1>
                        <a href="#"><h1>MORE</h1></a>
                    </div>
                    <?php if(is_array($lastnews)): foreach($lastnews as $key=>$vo): $smeta=json_decode($vo['smeta'],true); ?>
                        <div class="news">
                            <div class="newsImage">
                                <a href="<?php echo leuu('article/index',array('id'=>$vo['tid']));?>">
                                    <?php if(empty($smeta['thumb'])): ?><img src="/senmiao/tpl/s_tpl/Public/images/default_tupian1.png" class="img-responsive" alt="<?php echo ($vo["post_title"]); ?>"/>
                                        <?php else: ?>
                                        <img src="<?php echo sp_get_asset_upload_path($smeta['thumb']);?>" class="img-responsive img-thumbnail" alt="<?php echo ($vo["post_title"]); ?>" /><?php endif; ?>
                                </a>
                            </div>
                            <div class="newsDetail">
                                <div class="newsTitle">
                                    <a href="<?php echo leuu('article/index',array('id'=>$vo['tid']));?>">
                                    <?php echo ($vo["post_title"]); ?>
                                </a>
                                </div>

                                <div class="newsDate">


                                                                   </div>
                            </div>
                        </div><?php endforeach; endif; ?>
                </div>
            </div>
            <div class="span6">
                <div class="mainPageBlock">
                    <div class="mainPageBlockTitle">
                        <h1>视频展示</h1>
                        <a href=""><h1>MORE</h1></a>
                    </div>
                    <div class="mainPageBlockConent">
                        <div class="video">
                            <embed src="http://static.youku.com/v/swf/qplayer.swf?VideoIDS=XNjcwMDkwNTg4&winType=adshow&isAutoPlay=false" allowFullScreen="true" quality="high" width="300" height="250" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"/>
                        </div>
                        <div class="describe">
                            森淼生态旅游区是国家4A级景区，旅游区融入欧洲园林设计理念，令人心情舒爽、备感轻松;置身其中犹如走进沙旱生植物博物馆，成为银川市郊的天然“氧吧”，是银川市民近郊休闲度假的最佳选择之一。
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <div class="mainPageBigBlock">
        <div class="container">
            <div class="mainPageBigBlockTitle row"><h1>核心产业</h1></div>
            <hr>
            <div class="row mainPageBigBlockContent">

                    <div class="span2 littleBlock">
                        <div class="header">
                            <div class="item-image">
                                <img src="/senmiao/tpl/s_tpl/Public/images/zhognye.png" class="img-responsive" />
                            </div>
                            <h3><a href="/index.php/page/index/id/22">种业苗木</a></h3>
                        </div>
                        <div class="body">

                        </div>


                    </div>
                <div class="span2 littleBlock">
                    <div class="header">
                        <div class="item-image">
                            <img src="/senmiao/tpl/s_tpl/Public/images/jingguan.jpg" class="img-responsive">
                        </div>
                        <h3><a href="/index.php/page/index/id/22">园林景观</a></h3>
                        <hr>
                    </div>
                    <div class="body">

                    </div>
                </div>
                <div class="span2 littleBlock">
                    <div class="header">
                        <div class="item-image">
                            <img src="/senmiao/tpl/s_tpl/Public/images/lvyou.png" class="img-responsive">
                        </div>
                        <h3><a href="/index.php/page/index/id/37">生态旅游</a></h3>
                        <hr>
                    </div>
                    <div class="body">

                    </div>
                </div>
                <div class="span2 littleBlock">
                    <div class="header">
                        <div class="item-image">
                            <img src="/senmiao/tpl/s_tpl/Public/images/gouqi.png" class="img-responsive">
                        </div>
                        <h3><a href="">枸杞产品</a></h3>
                        <hr>
                    </div>
                    <div class="body">

                    </div>
                </div>
                <div class="span2 littleBlock">
                    <div class="header">
                        <div class="item-image">
                            <img src="/senmiao/tpl/s_tpl/Public/images/jiu.png" class="img-responsive">
                        </div>
                        <h3><a href="">蓝月谷酒</a></h3>
                        <hr>
                    </div>
                    <div class="body">

                    </div>
                </div>

            </div>
        </div>
    </div>
</div>



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
<script src="/senmiao/tpl/s_tpl/Public/js/FancyZoom.js"></script>
<script src="/senmiao/tpl/s_tpl/Public/js/FancyZoomHTML.js"></script>
<script src="/senmiao/statics/js/jquery-ui.min.js"></script>



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
    <script>
        $(".pined").pin();
    </script>


<script src="/senmiao/tpl/s_tpl/Public/js/slippry.min.js"></script>
<script>
$(function() {
	var demo1 = $("#homeslider").slippry({
		transition: 'fade',
		useCSS: true,
		captions: false,
		speed: 1000,
		pause: 3000,
		auto: true,
		preload: 'visible'
	});
});
</script>
<br>
<br>
<br>
<hr>
<!-- Footer
      ================================================== -->

<?php echo hook('footer');?>
      <div id="footer" style="">
         <div class="container">


                 <h4 style="color: #1963aa  ">友情链接</h4>
                 <?php $links=sp_getlinks(); ?>
                 <?php if(is_array($links)): foreach($links as $key=>$vo): ?><a href="<?php echo ($vo["link_url"]); ?>" target="<?php echo ($vo["link_target"]); ?>"><?php echo ($vo["link_name"]); ?></a>&nbsp&nbsp<?php endforeach; endif; ?>
             <br>

             <div style="text-align: center"><p>

                 版权所有：宁夏林业研究所股份有限公司  宁ICP备15000247号 <a href="http://localhost:8888/senmiao/page/index/id/3">联系我们</a>
             </p></div>
             <br>
         </div>

      </div>


<?php echo hook('footer_end');?>

</body>
</html>