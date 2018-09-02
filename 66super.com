




<html>
<head>
    <meta charset="utf-8">
	<meta name="baidu-site-verification" content="prZpIfiwD7" />
    <title>超锅的博客</title>
	<link href="http://www.66super.com/favicon.ico" rel="SHORTCUT ICON">
		<link rel="stylesheet" href="/static/bootstrap3/css/bootstrap.min.css">
		<link rel="stylesheet" href="/static/bootstrap3/css/bootstrap-theme.min.css">
		<link rel="stylesheet" href="/static/css/blog.css">
		<link href="favicon.ico" rel="SHORTCUT ICON">
		<script src="/static/bootstrap3/js/jquery-2.1.1.js"></script>
		<script src="/static/bootstrap3/js/bootstrap.min.js"></script>

		
		  <script type="text/javascript" src="/static/jqueryui/jquery-ui.js"></script>
		  <link href="/static/jqueryui/jquery-ui.css" rel="stylesheet">


		<link rel="stylesheet" type="text/css" href="/foreground/lunbotu/css/base.css" />
		<link rel="stylesheet" type="text/css" href="/foreground/lunbotu/css/main.css" />
		<script type="text/javascript" src="/foreground/lunbotu/js/jquery.easing.min.js"></script>
		<script type="text/javascript" src="/foreground/lunbotu/js/main.js"></script>
	
	
	<script>
			var _hmt = _hmt || [];
			(function() {
			  var hm = document.createElement("script");
			  hm.src = "//hm.baidu.com/hm.js?76d4f677a8da6ba52638bbfebaa150c7";
			  var s = document.getElementsByTagName("script")[0]; 
			  s.parentNode.insertBefore(hm, s);
			})();
	</script>

   

    <meta name="keywords" content="超锅的小小站v5" />
    <meta name="description" content="超锅的小小站v5" />
    <link href="css/styles.css" rel="stylesheet">
    <link href="css/animation.css" rel="stylesheet">
	<link href="/css/show_windows.css" rel="stylesheet">
    <link href="css/lrtk.css" rel="stylesheet" />
    <script type="text/javascript" src="/js/jquery.js"></script>
    <script type="text/javascript" src="/js/js.js"></script>
	
	<script type="text/javascript" src="/js/neon_text.js"></script>
	
	<script type="text/javascript" src="/js/raphael.js"></script>
    <script type="text/javascript" src="/js/jquery.uled.js"></script>
    
    <script src="/js/modernizr.js"></script>
</head>

<script type="text/javascript">
	
	 $(document).ready(function () {
           
			$('.cus_faguang').neonText({
				textSize: '18px'				
			});
			
			
			$('.cus_faguang2').neonText({
                textColor: '#a5a1a1',
                textSize: '18px',
                neonHighlight: '#aaFFFF',
                neonHighlightColor: '#aa00DE',
                neonHighlightHover: '#00aaaa',
                neonFontHover: '#aaaaaa'

            });
			
       //LED数码时间显示     
			var l2 = new uLED({
                id : "led2",
                type : "time",
                format : "hh:mm:ss",
                color : "#eee",
                bgcolor : "#000000",
                size : 2,
                rounded : 4
            });
		//结束 2016-10-14	
		
		
			//*************清除窗口*******
			 $("#span_confirm").click(function () {
				$("#show_win").css("display","none")
			})
						
			//*******************
		
		
		//*********************联系超锅****************************
		 $("#contact_me").click(function () {
				$("#show_win_sendmessage").css("display","block")
		})
		
		
		 $("#show_win_sendmessage").click(function () {
				$("#show_win_sendmessage").css("display","none")
			})
		
		//***********************************************
		
		
			
        })		
		
	function mysearch() {
      var searchword=$("#searchword").val();
      if(searchword.trim()=="" ||searchword.trim()==""){
        //alert("超锅提醒 关键字不能为空！请输入关键字搜索")
		//***************
			 $("#show_win").css("display","block")				
		//*******************
       return false;
      }else{
        $("form")[0].submit();
        return true;
      }
    }
</script>

<style>
	a:link {  text-decoration: none;  }
    a:visited {  text-decoration: none;  }
    a:hover {  text-decoration: none;  }
    a:active { text-decoration: none}

  .form_btn{
    width: 95%;
    height: 60px;
    margin:  10px auto;
  }
  .form_btn button{
    width: 90%;
    height: 100%;
    border: none;
    color: white;
    font-size: 14px;
    background: #473e3e;
    cursor: pointer;
  }
</style>

<body>
       <!--空字符串提示窗口-->
	<div class="pop" id="show_win">
    <div class="popMain">
        <div class="popTop"></div>
        <div class="popMiddle">
			<div style="height:39px;width:auto;background:#488ACC;font-size:26px;text-align:center" >超锅提醒</div>
            <p align="center">亲，你不能输入空！请输入关键词进行搜索</p>
        </div>
        <div class="popBottom">
            <span class="confirm" id="span_confirm" >确认</span>
        </div>
    </div>
	</div>
	 <!--提示窗口-->

 

<!--联系超锅-->
		<div class="pop" id="show_win_sendmessage">
				<div class="popMain">
        <div class="popTop"></div>
        <div class="popMiddle" align="center">
            <div style="height:39px;width:auto;background:#488ACC;font-size:26px;text-align:center" >联系超锅</div>
            <textarea style="font-size: 24px ;color: green;margin: 5px auto" rows="4" cols="48;" >输入你对超锅的留言</textarea>
            <button>发送</button> <button>清空</button>
        </div>
        <div class="popBottom">
            <span class="confirm" id="span_sent">确定</span>
        </div>
    </div>
		</div>
<!--联系超锅-->


<header>
    <nav id="nav">
        <ul>
            <li><a href="/" class="cus_faguang">网站首页</a></li>
            <li><a href="https://superman-wrdh.github.io" target="_blank" title="个人博客" class="cus_faguang">关于站长</a></li>
            <li><a href="/site.html"  title="关于网站" class="cus_faguang">关于本站</a></li>
            <li><a href="/search" target="_blank" title="超锅快搜" class="cus_faguang">超锅快搜</a></li>
            <li><a href="/translate" target="_blank" title="超锅翻译" class="cus_faguang">超锅翻译</a></li>
            <li><a href="/download" target="_blank" title="作品大全" class="cus_faguang">下载</a></li>
            <li></li>
			
			
        </ul>
        <script src="js/silder.js"></script><!--获取当前页导航 高亮显示标题-->
		<div id="led2" style="/*border: 1px solid red */;width:100px;height:25px;background: #222; display: table;margin-top:8px"></div>
    </nav>
</header>

<!--header end-->
<div id="mainbody">
    <div class="info">
        <figure> <img src="/images/art.jpg"  alt="Panama Hat">
            <figcaption><strong>做的到和做不到，</strong> 其实只在一念之间。心有多大！舞台就有多大！</figcaption>
        </figure>
        <div class="card">
            <h1>我的名片</h1>
            <p>网名：超人</p>
            <p>职业：java程序员</p>
            <p>电话：1341####360</p>
            <p>Email：1359931498@qq.com</p>
            <ul class="linkmore">
                <li><a href="#" class="talk" title="给我留言" class="cus_faguang" id="contact_me"></a></li>
                <li><a href="javascript:void(0)" class="address" title="联系地址"></a></li>
                <li><a href="javascript:void(0)" class="email" title="给我写信"></a></li>
                <li><a href="javascript:void(0)" class="photos" title="生活照片"></a></li>
                <li><a href="javascript:void(0)" class="heart" title="关注我"></a></li>
            </ul>
        </div>
    </div>
   <!--info end-->
	
    <div class="blank"></div>
    <div class="blogs">
        <ul class="bloglist">

            <!--文章列表-->
			


<style type="text/css">
	.datas .img{
		display:block;
		clear:both;
	}

	.datas img{
		padding:10px;
		padding-left:0px;
		max-height: 150px;
		max-width:300px;
	}
</style>
<div class="">
		<div class="data_list_title">
		<img src="/static/images/list_icon.png"/>
		<font color="white">最新文章</font></div>
		<div>
			<ul>
			
			  
			  	  <li style="margin-bottom: 30px">
					<p  style="" align="center">
						<a class="mytitle" href="/blog/articles/125.html">
					python pickle +redis缓存python复杂对象</a>
					</p>

				  	<span class="summary">摘要: REmote DIctionary Server(Redis) 是一个由Salvatore Sanfilippo写的key-value存储系统。Redis是一个开源的使用ANSI C语言编写、遵守BSD协议、支持网络、可基于内存亦可持久化的日志型、Key-Value数据库，并提供多种语言的API。它通常被称为...</span>
				  	<p align="right" class="myinfo">发表于 2018-08-27 14:36
						阅读(22) 评论(0) </p>
				  </li>
				  <hr style="height:5px;border:none;border-top:1px dashed gray;padding-bottom:  10px;" />
			  
			  	  <li style="margin-bottom: 30px">
					<p  style="" align="center">
						<a class="mytitle" href="/blog/articles/124.html">
					docker 创建带auth的MongoDB</a>
					</p>

				  	<span class="summary">摘要:  编写 docker-compose.yml文件运行  # docker-compose up -d生成容器并后台启动。# docker ps 查看容器是否启动进入容器 并进入 mongo shell# docker exec -it 15a3a5d57090 /bin/bash# mongo 创建root用...</span>
				  	<p align="right" class="myinfo">发表于 2018-06-07 14:14
						阅读(77) 评论(0) </p>
				  </li>
				  <hr style="height:5px;border:none;border-top:1px dashed gray;padding-bottom:  10px;" />
			  
			  	  <li style="margin-bottom: 30px">
					<p  style="" align="center">
						<a class="mytitle" href="/blog/articles/123.html">
					docker compose初探索</a>
					</p>

				  	<span class="summary">摘要:         用docker很长一段时间了，可以说使用docker试运维成本大大降低。对于初次使用docker来说，使用成本有点高，当然这是每个使用docker的人要跨过去的坎。当你docker入门后，每次使用命令创建docker容器可能有点不那么友好，这个时候，我们可以使用docker compose。d...</span>
				  	<p align="right" class="myinfo">发表于 2018-06-05 16:03
						阅读(79) 评论(0) </p>
				  </li>
				  <hr style="height:5px;border:none;border-top:1px dashed gray;padding-bottom:  10px;" />
			  
			  	  <li style="margin-bottom: 30px">
					<p  style="" align="center">
						<a class="mytitle" href="/blog/articles/122.html">
					django ORM models 独立django使用</a>
					</p>

				  	<span class="summary">摘要: django提供的ORM框架使用起来十分方便，有时候需要对每个models进行单独测试而又不想启动整个django服务，这时候可以使用models单独进行单独测试。谷歌搜索了下，谷歌了下，很快找到了答案（百度搜索到答案千篇一律一样，花了好长时间去尝试，还是错误的) ，特此记录了下。from django.co...</span>
				  	<p align="right" class="myinfo">发表于 2018-05-26 15:53
						阅读(83) 评论(0) </p>
				  </li>
				  <hr style="height:5px;border:none;border-top:1px dashed gray;padding-bottom:  10px;" />
			  
			  	  <li style="margin-bottom: 30px">
					<p  style="" align="center">
						<a class="mytitle" href="/blog/articles/118.html">
					python装饰器解读</a>
					</p>

				  	<span class="summary">摘要:  装饰器是python开发常用的一个强大功能，对于懂java的人来说，语法特性类似java的注解，但是python的装饰器使用远远比java的注解简单，但功能毫不逊色java的注解。但对于有些人来说，这个用法有点绕，下面通过我的解读，相信你一定能熟悉使用装饰器。现实开发中，当你开发快要完成时候，现在有一个新的...</span>
				  	<p align="right" class="myinfo">发表于 2018-02-20 20:15
						阅读(248) 评论(1) </p>
				  </li>
				  <hr style="height:5px;border:none;border-top:1px dashed gray;padding-bottom:  10px;" />
			  
			  	  <li style="margin-bottom: 30px">
					<p  style="" align="center">
						<a class="mytitle" href="/blog/articles/116.html">
					制作各种系统启动盘方法总结</a>
					</p>

				  	<span class="summary">摘要: 作为一个搞IT的，常年都备了几个系统盘，以备不时之需，当系统出问题时候，可以用系统盘拯救或者恢复。制作系统盘工具和方法有很多，下面说下我使用的方法。按照系统来分，主要分为windows系统和Linux（OS-X安装在非苹果硬件上较为折腾，不做考虑）的制作。1.windows  a.windows的启动盘制作比...</span>
				  	<p align="right" class="myinfo">发表于 2018-01-11 22:22
						阅读(292) 评论(438) </p>
				  </li>
				  <hr style="height:5px;border:none;border-top:1px dashed gray;padding-bottom:  10px;" />
			  
			  	  <li style="margin-bottom: 30px">
					<p  style="" align="center">
						<a class="mytitle" href="/blog/articles/115.html">
					centos7 1611版本安装pip</a>
					</p>

				  	<span class="summary">摘要: centos7 1611版本安装完后,直接安装yum install python-pip是无法安装的，说找不到该软件将yum 源设置成阿里源就可以了 操作步骤下载wget http://mirrors.aliyun.com/repo/Centos-7.repo替换cp Centos-7.repo /etc/...</span>
				  	<p align="right" class="myinfo">发表于 2017-12-08 11:58
						阅读(224) 评论(0) </p>
				  </li>
				  <hr style="height:5px;border:none;border-top:1px dashed gray;padding-bottom:  10px;" />
			  
			  	  <li style="margin-bottom: 30px">
					<p  style="" align="center">
						<a class="mytitle" href="/blog/articles/113.html">
					python本地代码服务器端调试</a>
					</p>

				  	<span class="summary">摘要:     最近python开发经常遇到了本地代码环境与服务器端环境不一样的问题，遇到问题就打日志一行行查看日志找出问题出在哪里。这种方法效率很低，有没有直接本地代码进行服务器端远程调试运行呢。答案是有的。尝试了网上很多方法，有的十分复杂，需要一大堆软件支持。最终发现PyCharm不需要下载任何插件，原生支持本地...</span>
				  	<p align="right" class="myinfo">发表于 2017-11-17 13:59
						阅读(301) 评论(3) </p>
				  </li>
				  <hr style="height:5px;border:none;border-top:1px dashed gray;padding-bottom:  10px;" />
			  
			  	  <li style="margin-bottom: 30px">
					<p  style="" align="center">
						<a class="mytitle" href="/blog/articles/106.html">
					centos7安装python3 pip3</a>
					</p>

				  	<span class="summary">摘要:       python3发布已经几年了，但现在绝大多数Linux系统预装的都是python2.7,最近尝试在centos7上安装python3和pip3折腾了好久，走过很多坑，尝试了很多种方法，失败了很多次，最终安装成功。现在总结下安装过程。  我采用的是源码编译安装，源码安装有个很大问题是依赖问题。 需要...</span>
				  	<p align="right" class="myinfo">发表于 2017-11-14 10:33
						阅读(299) 评论(3) </p>
				  </li>
				  <hr style="height:5px;border:none;border-top:1px dashed gray;padding-bottom:  10px;" />
			  
			  	  <li style="margin-bottom: 30px">
					<p  style="" align="center">
						<a class="mytitle" href="/blog/articles/105.html">
					AngularJS中ng-bind-html细节问题</a>
					</p>

				  	<span class="summary">摘要:   AngualrJS 提供了指令ng-bind-html 用于绑定包含HTML标签的文档，官方和大多数给的用法是    AngularJS 实例    绑定 <p> 内的 innerHTML 到变量 myText:     <div ng-app="myApp" ng-controller="myCtrl"...</span>
				  	<p align="right" class="myinfo">发表于 2017-03-18 23:56
						阅读(494) 评论(1) </p>
				  </li>
				  <hr style="height:5px;border:none;border-top:1px dashed gray;padding-bottom:  10px;" />
			  
			</ul>
		</div>
   </div>

<div>
	
	 <nav>
	  <ul class="pagination pagination-sm" style="background-color: #1B1717">
	    <li><a href='/index.html?page=1&'>首页</a></li><li class='disabled'><a href='#'>上一页</a></li><li class='active'><a href='/index.html?page=1&'>1</a></li><li><a href='/index.html?page=2&'>2</a></li><li><a href='/index.html?page=3&'>3</a></li><li><a href='/index.html?page=2&'>下一页</a></li><li><a href='/index.html?page=4&'>尾页</a></li>
	  </ul>
	</nav>
	
 </div>

            <!--文章列表-->

            
        </ul>
        <!--bloglist end-->
        <aside>
			<div class="search">
                <form class="searchform" method="post" action="/blog/q.html">
                    <input id="searchword" type="text" name="q">
					
					<div class="form_btn">
						<Button id="bt_search" type="button" onclick="mysearch()" >&nbsp;搜&nbsp;&nbsp;索&nbsp;</Button>
					</div>
                </form>
            </div>

            
            <div class="tuijian">
                <h2>公告</h2>
                
                    <li><span><strong>1</strong></span><a href="#">本站全面升级https</a></li>
                
                    <li><span><strong>2</strong></span><a href="#">本站提供服务一览</a></li>
                
            </div>
            

            
            <div class="tuijian">
                <h2>按阅读量</h2>
                <ol>
                    
                        <li><span><strong>1</strong></span><a href="/blog/articles/74.html">Linux系统安装java&nbsp;(610)</a></li>
                    
                        <li><span><strong>2</strong></span><a href="/blog/articles/92.html">Linux中~/.等符号的含义&nbsp;(496)</a></li>
                    
                        <li><span><strong>3</strong></span><a href="/blog/articles/102.html">Ubuntu Linux 14.04设置ssh允许root远程登录&nbsp;(474)</a></li>
                    
                        <li><span><strong>4</strong></span><a href="/blog/articles/75.html">求10亿以内质数和的最快算法（java语言版）&nbsp;(473)</a></li>
                    
                        <li><span><strong>5</strong></span><a href="/blog/articles/77.html">Linux解压缩命令汇总&nbsp;(415)</a></li>
                    
                        <li><span><strong>6</strong></span><a href="/blog/articles/94.html">ubuntu / debian  Linux安装MySQL简单方法&nbsp;(410)</a></li>
                    
                        <li><span><strong>7</strong></span><a href="/blog/articles/87.html">Huffman树构造&nbsp;(394)</a></li>
                    
                        <li><span><strong>8</strong></span><a href="/blog/articles/101.html">Struts2动态Action编写方法总结&nbsp;(393)</a></li>
                    
                        <li><span><strong>9</strong></span><a href="/blog/articles/105.html">AngularJS中ng-bind-html细节问题&nbsp;(382)</a></li>
                    
                        <li><span><strong>10</strong></span><a href="/blog/articles/93.html">MD5加密&nbsp;(374)</a></li>
                    
                </ol>
            </div>
            
				
            <div class="tuijian">
                <h2>按文章类别</h2>
                <ul>
                    
							<li><span><a href="/index.html?typeId=1">JavaSE(2)</a></span></li>
					
							<li><span><a href="/index.html?typeId=2">MySQL(3)</a></span></li>
					
							<li><span><a href="/index.html?typeId=4">IT之路(5)</a></span></li>
					
							<li><span><a href="/index.html?typeId=13">Linux(12)</a></span></li>
					
							<li><span><a href="/index.html?typeId=14">算法(4)</a></span></li>
					
							<li><span><a href="/index.html?typeId=15">前端(1)</a></span></li>
					
							<li><span><a href="/index.html?typeId=18">SpringMVC(3)</a></span></li>
					
							<li><span><a href="/index.html?typeId=19">Struts2(1)</a></span></li>
					
							<li><span><a href="/index.html?typeId=21">AngularJS(1)</a></span></li>
					
							<li><span><a href="/index.html?typeId=22">python(2)</a></span></li>
					
							<li><span><a href="/index.html?typeId=24">Django(1)</a></span></li>
					
                </ul>
            </div>
           
            <div class="clicks">
                <h2>按日期</h2>
                <ol>
                    
							<li><span><a href="/index.html?releaseDateStr=2018年08月">2018年08月(1)</a></span></li>
					
							<li><span><a href="/index.html?releaseDateStr=2018年06月">2018年06月(2)</a></span></li>
					
							<li><span><a href="/index.html?releaseDateStr=2018年05月">2018年05月(1)</a></span></li>
					
							<li><span><a href="/index.html?releaseDateStr=2018年02月">2018年02月(1)</a></span></li>
					
							<li><span><a href="/index.html?releaseDateStr=2018年01月">2018年01月(1)</a></span></li>
					
							<li><span><a href="/index.html?releaseDateStr=2017年12月">2017年12月(1)</a></span></li>
					
							<li><span><a href="/index.html?releaseDateStr=2017年11月">2017年11月(2)</a></span></li>
					
							<li><span><a href="/index.html?releaseDateStr=2017年03月">2017年03月(3)</a></span></li>
					
							<li><span><a href="/index.html?releaseDateStr=2016年12月">2016年12月(1)</a></span></li>
					
							<li><span><a href="/index.html?releaseDateStr=2016年11月">2016年11月(3)</a></span></li>
					
							<li><span><a href="/index.html?releaseDateStr=2016年10月">2016年10月(4)</a></span></li>
					
							<li><span><a href="/index.html?releaseDateStr=2016年09月">2016年09月(2)</a></span></li>
					
							<li><span><a href="/index.html?releaseDateStr=2016年08月">2016年08月(10)</a></span></li>
					
							<li><span><a href="/index.html?releaseDateStr=2016年07月">2016年07月(3)</a></span></li>
					
                </ol>
            </div>
			
            
			
            <div class="viny">
                <dl>
                    <dt class="art"><img src="/images/artwork.png" alt="专辑"></dt>
                    <dd class="icon-song"><span></span>Kiss The Rain</dd>
                    <dd class="icon-artist"><span></span>歌手：李闰珉</dd>
                    <dd class="icon-album"><span></span>所属专辑：from the yellow room</dd>
                    <dd class="icon-like"><span></span><a href="/">喜欢</a></dd>
                    <dd class="music">
                        <audio src="http://www.66super.com/kisstherain.mp3" controls></audio>
                    </dd>
                    <!--也可以添加loop属性 音频加载到末尾时，会重新播放-->
                </dl>
            </div>
        </aside>
    </div>
    <!--blogs end-->
</div>
<!--mainbody end-->
<footer >
    <div class="footer-mid">
        <div class="links" style="min-height:150px;">
            <h2>友情链接</h2>
            <ul>
                <li style="float: left;list-style: none"><a href="/" >超锅个人博客 &nbsp;&nbsp;&nbsp;&nbsp;</a></li>

                <li style="float: left;list-style: none"><a href="http://www.66super.com" >超锅技术服务中心&nbsp;&nbsp;&nbsp;&nbsp;</a></li>

                
                        <li style="float: left;list-style: none"><span><a href="http://stackoverflow.com/" target="_blank">Stackoverflow &nbsp;&nbsp;</a></span></li>

                
                        <li style="float: left;list-style: none"><span><a href="http://mvnrepository.com/" target="_blank">maven仓库 &nbsp;&nbsp;</a></span></li>

                
                        <li style="float: left;list-style: none"><span><a href="http://www.mybatis.org" target="_blank">mybatis官网 &nbsp;&nbsp;</a></span></li>

                
            </ul>
        </div>

    </div>
    <div class="footer-bottom">
        <p>鄂ICP备16015580号 Copyright © 2013-2018 超锅  <a href="http://www.66super.com">版权所有</a></p>
    </div>
</footer>
<!-- jQuery回顶部和建议 代码开始 -->
<div id="tbox"> <a id="togbook" href="javascript:void(0)"></a> <a id="gotop" href="javascript:void(0)"></a> </div>
<!-- 代码结束 -->
</body>
</html>
