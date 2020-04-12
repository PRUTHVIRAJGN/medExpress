<a href="offer.html"><img src="/images/download.png" class="img-head" alt=""></a>
<div class="header">
		<div class="container">
			<div class="logo">
				<h1 ><a href="index.html"><b>T<br>H<br>E</b>&nbsp;medExpress<span>online Medicine Market</span></a></h1>
			</div>
			<div class="head-t">
				<ul class="card">
					<li><a href="wishlist.html" ><i class="fa fa-heart" aria-hidden="true"></i>Wishlist</a></li>
					<li><a href="login.html" ><i class="fa fa-user" aria-hidden="true"></i>Login</a></li>
					<li><a href="register.html" ><i class="fa fa-arrow-right" aria-hidden="true"></i>Register</a></li>
					<li><a href="about.html" ><i class="fa fa-file-text-o" aria-hidden="true"></i>Order History</a></li>
					<li><a href="shipping.html" ><i class="fa fa-ship" aria-hidden="true"></i>Shipping</a></li>
				</ul>	
			</div>
			<div class="header-ri">
				<ul class="social-top">
					<li><a href="#" class="icon facebook"><i class="fa fa-facebook" aria-hidden="true"></i><span></span></a></li>
					<li><a href="#" class="icon twitter"><i class="fa fa-twitter" aria-hidden="true"></i><span></span></a></li>
					<li><a href="#" class="icon pinterest"><i class="fa fa-pinterest-p" aria-hidden="true"></i><span></span></a></li>
					<li><a href="#" class="icon dribbble"><i class="fa fa-dribbble" aria-hidden="true"></i><span></span></a></li>
				</ul>	
			</div>
				<div class="nav-top">
					<nav class="navbar navbar-default">
					<div class="navbar-header nav_2">
						<button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
					</div> 
					<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
						<ul class="nav navbar-nav ">
						<li class=" active"><a href="index.html" class="hyper "><span>Home</span></a></li>
	<c:forEach items="${mainCategoryList}" var="mainCat" varStatus="loop">
	<li class="dropdown ">
								<a href="#" class="dropdown-toggle  hyper" data-toggle="dropdown" ><span>${mainCat.name}<b class="caret"></b></span></a>
								<ul class="dropdown-menu multi">
									<div class="row">
										<div class="col-sm-3">
											<ul class="multi-column-dropdown">
										<c:forEach  items="${subCategoryList[loop.index]}" var="subCat" begin = "0" end = "${fn:length(subCategoryList[loop.index])/3}">
												<li><a href="kitchen.html"><i class="fa fa-angle-right" aria-hidden="true"></i>${subCat.name}</a></li>
										</c:forEach>
											</ul>
										</div>
										<div class="col-sm-3">
											<ul class="multi-column-dropdown">
											<c:forEach  items="${subCategoryList[loop.index]}" var="subCat" begin = "${(fn:length(subCategoryList[loop.index])/3)+1}" end = "${(fn:length(subCategoryList[loop.index])/1.5)+1}">
												<li><a href="kitchen.html"><i class="fa fa-angle-right" aria-hidden="true"></i>${subCat.name}</a></li>
										</c:forEach>
											</ul>
										</div>
										<div class="col-sm-3">
											<ul class="multi-column-dropdown">
											<c:forEach  items="${subCategoryList[loop.index]}" var="subCat" begin = "${(fn:length(subCategoryList[loop.index])/1.5)+2}" end = "${(fn:length(subCategoryList[loop.index])/1)-1}">
												<li><a href="${subCat.targetUrl}">${subCat.imageUrl}</i>${subCat.name}</a></li>
											</c:forEach>
											</ul>
										</div>
										<div class="col-sm-3 w3l">
											<a href="#"><img src="${mainCat.imageUrl}" class="img-responsive" alt=""></a>
										</div>
										<div class="clearfix"></div>
									</div>	
								</ul>
							</li>
							</c:forEach>
						</ul>
					</div>
					</nav>
					 <div class="cart" >
						<span class="fa fa-shopping-cart my-cart-icon"><span class="badge badge-notify my-cart-badge"></span></span>
					</div>
					<div class="clearfix"></div>
				</div>
				</div>			
</div>