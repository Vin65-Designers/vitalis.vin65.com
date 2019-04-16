<cfoutput> <!DOCTYPE html>
<html>
<head>

	<meta charset="utf-8">
	<cf_metaTags>
	<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0, maximum-scale=1.0" />

	<link rel="Shortcut Icon" href="/favicon.ico" type="image/x-icon">
	<link rel="apple-touch-icon" href="/apple-touch-icon.png"/>

	<cf_vin65GlobalAssets>

	<cf_css files="/assets/slick/slick-winedirect.css,/assets/slick/slick-theme-winedirect.css,/assets/css/screen.min.css">
	
	<!--[if lt IE 9]>
		<script src="/assets/js/html5shiv-printshiv.js"></script>
		<script src="/assets/js/respond.min.js"></script>
	<![endif]-->

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
		<cf_logo>
		<!--/logo-->
		
		<!--mainMenu-->
		<nav>
			<a href="##footerNav" class="menuLink"><i class="icon-menu"></i></a>
			<cf_layoutHeaderNav depth="2">
		</nav>
		<!--/mainMenu-->
		
	</header>
	<!--/header-->
	
	<!--content-->
	<section class="content v65-group">
		
		<div class="backtotop">	
			<a href="##"><i class="icon-up-bold"></i>TOP</a>
		</div>

		<article class="pageContent">
			<cf_mainContent>
		</article>
		
		<div class="subMenu">
			<a name="footerNav"></a> 
			<h4><cf_leftNavSectionTitle></h4>
			<cf_recipeCategories>
		</div>
		
	</section>
	<!--/content-->

	<footer class="footercontainer">

			<div class="colWrapper v65-group footerBorder">

				<div class="footerUpper">

					<div class="contactInfo">
						<cf_contentblock group="Footer Contact Details">
						<ul class="socialicons desktopOnly">
							<cf_socialMediaLinks>
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
						<cf_socialMediaLinks>
					</ul>
				<p class="footer-info"><cf_footerInfo></p>
				<p class="legal">
					<cf_copyright><br>
					<cf_vin65Accolade>
				</p>

			</div>
			<!--/footer_tools-->

		</footer>
	<!--footercontainer-->

	<cf_js files="/assets/slick/slick-winedirect.js,/assets/js/scripts.js">

	<cf_vin65GlobalFooterAssets>

</body>
</html> </cfoutput>
utput>
