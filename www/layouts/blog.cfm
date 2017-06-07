<cfoutput> <!DOCTYPE html>
<html>
<head>
  
	<meta charset="utf-8">
	<cf_metaTags>
	<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0, maximum-scale=1.0" />

	<link rel="Shortcut Icon" href="/favicon.ico" type="image/x-icon">
	<link rel="apple-touch-icon" href="/apple-touch-icon.png"/>

	<cf_vin65GlobalAssets>

	<cf_css files="/assets/css/screen.min.css">

	<!--[if lt IE 9]>
		<script src="/assets/js/html5shiv-printshiv.js"></script>
		<script src="/assets/js/respond.min.js"></script>
	<![endif]-->

	<cf_rssFeed>
	
</head>
<body>

	<!--header-->
	<header>

		<!--user-tools-->
		<div id="user-tools">
			<cf_points>
			<cf_login>
			<cf_modalCart>	
		</div>
		<!--/user-tools-->
		
		<!--logo-->
		<a href="/" accesskey="h" class="logo"><img src="/assets/images/logo.png" alt="<cf_websiteName>"></a>
		<!--/logo-->
		
		<nav>
			<cf_layoutHeaderNav depth="2">
		</nav>
		
	</header>
	<!--/header-->
	
	<!--content-->
	<div class="content v65-group">
		
		<div class="backtotop">	
			<a href="##"><i class="icon-up-bold"></i>TOP</a>
		</div>

		<!--blogContent-->
		<div class="blogContent">
			<cf_mainContent>
		</div>
		<!--/blogContent-->
		
		<!--blogRightWrapper-->
		<aside class="blogRightWrapper">

			<div class="blogFilterLeft">
				<h5>Recent Posts</h5>
				<cf_blogRecentPosts maxrows="10">

				<h5>Blog Categories</h5>
				<cf_blogCategories>

			</div>

			<div class="blogFilterRight">

				<h5>Our Writers</h5>
				<cf_blogAuthors>

				<h5>Blog Archives</h5>
				<cf_blogArchives>

			</div>

			</aside>
		<!--/blogRightWrapper-->	
		
	</div>
	<!--/content-->
	
	<footer class="footercontainer">

			<div class="colWrapper v65-group footerBorder">

				<div class="footerUpper">

					<div class="contactInfo">
						<cf_contentblock group="Footer Contact Details">
						<ul class="socialicons desktopOnly">
							<cf_customFile file="/v65html/_social.html">
						</ul>
						
					</div>
					<!--contactInfo-->

					<div class="newsletterSignup">
						<cf_pods location="Newsletter Sign Up">
						<cf_subscribe contactType="Newsletter">
					</div>
					<!--newsletterSignup-->

				</div>
				<!--footerUpper-->
				
				<!--footer_nav-->
				<div class="footerNav">
					<a name="footerNav"></a> 
					<cf_layoutFooterNav>
				</div>
				<!--/footer_nav-->

			</div>
			<!--colWrapper-->

			
			<div class="footerTools"> 
					<ul class="socialicons mobileOnly">
						<cf_customFile file="/v65html/_social.html">
					</ul>

				<p class="legal">
					<cf_copyright><br>
					<cf_vin65Accolade>
				</p>

			</div>
			<!--/footer_tools-->

		</footer>
	<!--footercontainer-->


	<cf_js files="/assets/js/scripts.js,/assets/nivo/jquery.nivo.slider.pack.js">

	<cf_vin65GlobalFooterAssets>

</body>
</html>			 </cfoutput>
