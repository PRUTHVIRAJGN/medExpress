
 <!---->
 <!-- signin Model -->
	<!-- Modal1 -->
	<div class="modal fade in" id="myModal1" tabindex="-1" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body modal-body-sub_agile">
					<div class="main-mailposi">
						<span class="fa fa-envelope-o" aria-hidden="true"></span>
					</div>
					<div class="modal_body_left modal_body_left1">
						<h3 class="agileinfo_sign">Sign In </h3>
						<p>
							Sign In now, Let's start your Grocery Shopping. Don't have an account?
							<a href="#" data-toggle="modal" data-target="#myModal2">
								Sign Up Now</a>
						</p>
						<form action="#" method="post">
							<div class="styled-input agile-styled-input-top">
								<input type="text" placeholder="User Name" name="Name" required="">
							</div>
							<div class="styled-input">
								<input type="password" placeholder="Password" name="password" required="">
							</div>
							<input type="submit" value="Sign In">
						</form>
						<div class="clearfix"></div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<!-- //Modal content-->
		</div>
	</div>
	<!-- //Modal1 -->
	<!-- //signin Model -->


<!-- signup Model -->
	<!-- Modal2 -->
	<div class="modal fade in" id="myModal2" tabindex="-1" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body modal-body-sub_agile">
					<div class="main-mailposi">
						<span class="fa fa-envelope-o" aria-hidden="true"></span>
					</div>
					<div class="modal_body_left modal_body_left1">
						<h3 class="agileinfo_sign">Sign Up</h3>
						<p>
							Come join the Grocery Shoppy! Let's set up your Account.
						</p>
						<form action="#" method="post">
							<div class="styled-input agile-styled-input-top">
								<input type="text" placeholder="Name" name="Name" required="">
							</div>
							<div class="styled-input">
								<input type="email" placeholder="E-mail" name="Email" required="">
							</div>
							<div class="styled-input">
								<input type="password" placeholder="Password" name="password" id="password1" required="">
							</div>
							<div class="styled-input">
								<input type="password" placeholder="Confirm Password" name="Confirm Password" id="password2" required="">
							</div>
							<input type="submit" value="Sign Up">
						</form>
						<p>
							<a href="#">By clicking register, I agree to your terms</a>
						</p>
					</div>
				</div>
			</div>
			<!-- //Modal content-->
		</div>
	</div>
	<!-- //Modal2 -->
	<!-- //signup Model -->
<div data-vide-bg="${HOME.HOME_VIDEO.value}">
    <div class="container">
		<div class="banner-info">
			<h3>${HOME.HOME_VIDEO_TEXT.value}</h3>		
			<div class="search-form">
				<form action="#" method="post">
					<input type="text" placeholder="Search..." name="Search...">
					<input type="submit" value=" " >
				</form>
			</div>	
		</div>	
    </div>
</div>
    <script>window.jQuery || document.write('<script src="/js/vendor/jquery-1.11.1.min.js"><\/script>')</script>
    <script src="/js/jquery.vide.min.js"></script>


<div class="kic-top ">
	<div class="container ">
	<div class="kic ">
			<h3>Popular Categories</h3>
		</div>
		<c:forEach var="i" begin="0" end="${fn:length(HomePopularCategory)-1}">
		<div class="col-md-4 kic-top1">
			<a href="${HomePopularCategory[i].targetUrl}/${HomePopularCategory[i].id}">
				<img src="${HomePopularCategory[i].imageUrl}" class="img-responsive" alt="">
			</a>
			<h6>${HomePopularCategory[i].name}</h6>
			<p>${HomePopularCategory[i].description}</p>
		</div>
		</c:forEach>
	</div>
</div>

<!--content-->
<div class="content-top ">
	<div class="container ">
		<div class="spec ">
			<h3>Special Offers</h3>
			<div class="ser-t">
				<b></b>
				<span><i></i></span>
				<b class="line"></b>
			</div>
		</div>
			<div class="tab-head ">
				<nav class="nav-sidebar">
					<ul class="nav tabs ">
					  <li class="active"><a href="#tab1" data-toggle="tab">${HomeSpecialOfferSubCategory[0].name}</a></li>
					  <c:forEach var="i" begin="1" end="${fn:length(HomeSpecialOfferSubCategory)}" >
					  <li class=""><a href="#tab2" data-toggle="tab">${HomeSpecialOfferSubCategory[i].name}</a></li> 
					  </c:forEach>
					</ul>
				</nav>
				<div class=" tab-content tab-content-t ">
					<div class="tab-pane active text-style" id="tab1">
						<div class=" con-w3l">
							<div class="col-md-3 m-wthree">
								<div class="col-m">								
									<a href="#" data-toggle="modal" data-target="#myModal1" class="offer-img">
										<img src="/images/of.png" class="img-responsive" alt="">
										<div class="offer"><p><span>Offer</span></p></div>
									</a>
									<div class="mid-1">
										<div class="women">
											<h6><a href="single.html">Moong</a>(1 kg)</h6>							
										</div>
										<div class="mid-2">
											<p ><label>$2.00</label><em class="item_price">$1.50</em></p>
											  <div class="block">
												<div class="starbox small ghosting"> </div>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="add">
										   <button class="btn btn-danger my-cart-btn my-cart-b " data-id="1" data-name="Moong" data-summary="summary 1" data-price="1.50" data-quantity="1" data-image="/images/of.png">Add to Cart</button>
										</div>
										
									</div>
								</div>
							</div>
							<div class="col-md-3 m-wthree">
								<div class="col-m">
									<a href="#" data-toggle="modal" data-target="#myModal2" class="offer-img">
										<img src="/images/of1.png" class="img-responsive" alt="">
										<div class="offer"><p><span>Offer</span></p></div>
									</a>
									<div class="mid-1">
										<div class="women">
											<h6><a href="single.html">Sunflower Oil</a>(5 kg)</h6>							
										</div>
										<div class="mid-2">
											<p ><label>$10.00</label><em class="item_price">$9.00</em></p>
											  <div class="block">
												<div class="starbox small ghosting"> </div>
											</div>
											<div class="clearfix"></div>
										</div>
												<div class="add">
										   <button class="btn btn-danger my-cart-btn my-cart-b" data-id="2" data-name="Sunflower Oil" data-summary="summary 2" data-price="9.00" data-quantity="1" data-image="/images/of1.png">Add to Cart</button>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-3 m-wthree">
								<div class="col-m">
									<a href="#" data-toggle="modal" data-target="#myModal3" class="offer-img">
										<img src="/images/of2.png" class="img-responsive" alt="">
										<div class="offer"><p><span>Offer</span></p></div>
									</a>
									<div class="mid-1">
										<div class="women">
											<h6><a href="single.html">Kabuli Chana</a>(1 kg)</h6>							
										</div>
										<div class="mid-2">
											<p ><label>$3.00</label><em class="item_price">$2.00</em></p>
											  <div class="block">
												<div class="starbox small ghosting"> </div>
											</div>
											<div class="clearfix"></div>
										</div>
											<div class="add">
										   <button class="btn btn-danger my-cart-btn my-cart-b" data-id="3" data-name="Kabuli Chana" data-summary="summary 3" data-price="2.00" data-quantity="1" data-image="/images/of2.png">Add to Cart</button>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-3 m-wthree">
								<div class="col-m">
									<a href="#" data-toggle="modal" data-target="#myModal4" class="offer-img">
										<img src="/images/of3.png" class="img-responsive" alt="">
										<div class="offer"><p><span>Offer</span></p></div>
									</a>
									<div class="mid-1">
										<div class="women">
											<h6><a href="single.html">Soya Chunks</a>(1 kg)</h6>							
										</div>
										<div class="mid-2">
											<p ><label>$4.00</label><em class="item_price">$3.50</em></p>
											  <div class="block">
												<div class="starbox small ghosting"> </div>
											</div>
											<div class="clearfix"></div>
										</div>
											<div class="add">
										   <button class="btn btn-danger my-cart-btn my-cart-b" data-id="4" data-name="Soya Chunks" data-summary="summary 4" data-price="3.50" data-quantity="1" data-image="/images/of3.png">Add to Cart</button>
										</div>
									</div>
								</div>
							</div>
							<div class="clearfix"></div>
						 </div>
					</div>
					<div class="tab-pane  text-style" id="tab2">
						<div class=" con-w3l">
							<div class="col-md-3 m-wthree">
								<div class="col-m">
									<a href="#" data-toggle="modal" data-target="#myModal5" class="offer-img">
										<img src="/images/of4.png" class="img-responsive" alt="">
										<div class="offer"><p><span>Offer</span></p></div>
									</a>
									<div class="mid-1">
										<div class="women">
											<h6><a href="single.html">Lays</a>(100 g)</h6>							
										</div>
										<div class="mid-2">
											<p ><label>$1.00</label><em class="item_price">$0.70</em></p>
											  <div class="block">
												<div class="starbox small ghosting"> </div>
											</div>
											<div class="clearfix"></div>
										</div>
											<div class="add">
										   <button class="btn btn-danger my-cart-btn my-cart-b" data-id="5" data-name="Lays" data-summary="summary 5" data-price="0.70" data-quantity="1" data-image="/images/of4.png">Add to Cart</button>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-3 m-wthree">
								<div class="col-m">
									<a href="#" data-toggle="modal" data-target="#myModal6" class="offer-img">
										<img src="/images/of5.png" class="img-responsive" alt="">
										<div class="offer"><p><span>Offer</span></p></div>
									</a>
									<div class="mid-1">
										<div class="women">
											<h6><a href="single.html">Kurkure</a>(100 g)</h6>							
										</div>
										<div class="mid-2">
											<p ><label>$1.00</label><em class="item_price">$0.70</em></p>
											  <div class="block">
												<div class="starbox small ghosting"> </div>
											</div>
											<div class="clearfix"></div>
										</div>
											<div class="add">
										   <button class="btn btn-danger my-cart-btn my-cart-b" data-id="6" data-name="Kurkure" data-summary="summary 6" data-price="0.70" data-quantity="1" data-image="/images/of5.png">Add to Cart</button>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-3 m-wthree">
								<div class="col-m">
									<a href="#" data-toggle="modal" data-target="#myModal7" class="offer-img">
										<img src="/images/of6.png" class="img-responsive" alt="">
										<div class="offer"><p><span>Offer</span></p></div>
									</a>
									<div class="mid-1">
										<div class="women">
											<h6><a href="single.html">Popcorn</a>(250 g)</h6>							
										</div>
										<div class="mid-2">
											<p ><label>$2.00</label><em class="item_price">$1.00</em></p>
											  <div class="block">
												<div class="starbox small ghosting"> </div>
											</div>
											<div class="clearfix"></div>
										</div>
											<div class="add">
										   <button class="btn btn-danger my-cart-btn my-cart-b" data-id="7" data-name="Popcorn" data-summary="summary 7" data-price="1.00" data-quantity="1" data-image="/images/of6.png">Add to Cart</button>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-3 m-wthree">
								<div class="col-m">
									<a href="#" data-toggle="modal" data-target="#myModal8" class="offer-img">
										<img src="/images/of7.png" class="img-responsive" alt="">
										<div class="offer"><p><span>Offer</span></p></div>
									</a>
									<div class="mid-1">
										<div class="women">
											<h6><a href="single.html">Nuts</a>(250 g)</h6>							
										</div>
										<div class="mid-2">
											<p ><label>$4.00</label><em class="item_price">$3.50</em></p>
											  <div class="block">
												<div class="starbox small ghosting"> </div>
											</div>
											<div class="clearfix"></div>
										</div>
											<div class="add">
										   <button class="btn btn-danger my-cart-btn my-cart-b" data-id="8" data-name="Nuts" data-summary="summary 8" data-price="3.50" data-quantity="1" data-image="/images/of7.png">Add to Cart</button>
										</div>
									</div>
								</div>
							</div>
							<div class="clearfix"></div>
						 </div>		  
					</div>
					<div class="tab-pane  text-style" id="tab3">
						<div class=" con-w3l">
							<div class="col-md-3 m-wthree">
								<div class="col-m">
								<a href="#" data-toggle="modal" data-target="#myModal9" class="offer-img">
										<img src="/images/of8.png" class="img-responsive" alt="">
										<div class="offer"><p><span>Offer</span></p></div>
									</a>
									<div class="mid-1">
										<div class="women">
											<h6><a href="single.html">Banana</a>(6 pcs)</h6>							
										</div>
										<div class="mid-2">
											<p ><label>$2.00</label><em class="item_price">$1.50</em></p>
											  <div class="block">
												<div class="starbox small ghosting"> </div>
											</div>
											<div class="clearfix"></div>
										</div>
											<div class="add">
										   <button class="btn btn-danger my-cart-btn my-cart-b" data-id="9" data-name="Banana" data-summary="summary 9" data-price="1.50" data-quantity="1" data-image="/images/of8.png">Add to Cart</button>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-3 m-wthree">
								<div class="col-m">
									<a href="#" data-toggle="modal" data-target="#myModal10" class="offer-img">
										<img src="/images/of9.png" class="img-responsive" alt="">
										<div class="offer"><p><span>Offer</span></p></div>
									</a>
									<div class="mid-1">
										<div class="women">
											<h6><a href="single.html">Onion</a>(1 kg)</h6>							
										</div>
										<div class="mid-2">
											<p ><label>$1.00</label><em class="item_price">$0.70</em></p>
											  <div class="block">
												<div class="starbox small ghosting"> </div>
											</div>
											<div class="clearfix"></div>
										</div>
											<div class="add">
										   <button class="btn btn-danger my-cart-btn my-cart-b" data-id="10" data-name="Onion" data-summary="summary 10" data-price="0.70" data-quantity="1" data-image="/images/of9.png">Add to Cart</button>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-3 m-wthree">
								<div class="col-m">
									<a href="#" data-toggle="modal" data-target="#myModal11" class="offer-img">
										<img src="/images/of10.png" class="img-responsive" alt="">
										<div class="offer"><p><span>Offer</span></p></div>
									</a>
									<div class="mid-1">
										<div class="women">
											<h6><a href="single.html"> Bitter Gourd</a>(1 kg)</h6>							
										</div>
										<div class="mid-2">
											<p ><label>$2.00</label><em class="item_price">$1.00</em></p>
											  <div class="block">
												<div class="starbox small ghosting"> </div>
											</div>
											<div class="clearfix"></div>
										</div>
											<div class="add">
										   <button class="btn btn-danger my-cart-btn my-cart-b" data-id="11" data-name="Bitter Gourd" data-summary="summary 11" data-price="1.00" data-quantity="1" data-image="/images/of10.png">Add to Cart</button>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-3 m-wthree">
								<div class="col-m">
									<a href="#" data-toggle="modal" data-target="#myModal12" class="offer-img">
										<img src="/images/of11.png" class="img-responsive" alt="">
										<div class="offer"><p><span>Offer</span></p></div>
									</a>
									<div class="mid-1">
										<div class="women">
											<h6><a href="single.html">Apples</a>(1 kg)</h6>							
										</div>
										<div class="mid-2">
											<p ><label>$4.00</label><em class="item_price">$3.50</em></p>
											  <div class="block">
												<div class="starbox small ghosting"> </div>
											</div>
											<div class="clearfix"></div>
										</div>
											<div class="add">
										   <button class="btn btn-danger my-cart-btn my-cart-b" data-id="12" data-name="Apples" data-summary="summary 12" data-price="3.50" data-quantity="1" data-image="/images/of11.png">Add to Cart</button>
										</div>
									</div>
								</div>
							</div>
							<div class="clearfix"></div>
						 </div>		  
					</div>
					<div class="tab-pane text-style" id="tab4">
							<div class=" con-w3l">
							<div class="col-md-3 m-wthree">
								<div class="col-m">
								<a href="#" data-toggle="modal" data-target="#myModal13" class="offer-img">
										<img src="/images/of12.png" class="img-responsive" alt="">
										<div class="offer"><p><span>Offer</span></p></div>
									</a>
									<div class="mid-1">
										<div class="women">
											<h6><a href="single.html">Honey</a>(500 g)</h6>							
										</div>
										<div class="mid-2">
											<p ><label>$7.00</label><em class="item_price">$6.00</em></p>
											  <div class="block">
												<div class="starbox small ghosting"> </div>
											</div>
											<div class="clearfix"></div>
										</div>
											<div class="add">
										   <button class="btn btn-danger my-cart-btn my-cart-b" data-id="13" data-name="Honey" data-summary="summary 13" data-price="6.00" data-quantity="1" data-image="/images/of12.png">Add to Cart</button>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-3 m-wthree">
								<div class="col-m ">
									<a href="#" data-toggle="modal" data-target="#myModal14" class="offer-img">
										<img src="/images/of13.png" class="img-responsive" alt="">
										<div class="offer"><p><span>Offer</span></p></div>
									</a>
									<div class="mid-1">
										<div class="women">
											<h6><a href="single.html">Chocos</a>(250 g)</h6>							
										</div>
										<div class="mid-2">
											<p ><label>$5.00</label><em class="item_price">$4.50</em></p>
											  <div class="block">
												<div class="starbox small ghosting"> </div>
											</div>
											<div class="clearfix"></div>
										</div>
											<div class="add">
										   <button class="btn btn-danger my-cart-btn my-cart-b" data-id="14" data-name="Chocos" data-summary="summary 14" data-price="4.50" data-quantity="1" data-image="/images/of13.png">Add to Cart</button>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-3 m-wthree">
								<div class="col-m ">
									<a href="#" data-toggle="modal" data-target="#myModal15" class="offer-img">
										<img src="/images/of14.png" class="img-responsive" alt="">
										<div class="offer"><p><span>Offer</span></p></div>
									</a>
									<div class="mid-1">
										<div class="women">
											<h6><a href="single.html">Oats</a>(1 kg)</h6>							
										</div>
										<div class="mid-2">
											<p ><label>$4.00</label><em class="item_price">$3.50</em></p>
											  <div class="block">
												<div class="starbox small ghosting"> </div>
											</div>
											<div class="clearfix"></div>
										</div>
											<div class="add">
										   <button class="btn btn-danger my-cart-btn my-cart-b" data-id="15" data-name="Oats" data-summary="summary 15" data-price="3.50" data-quantity="1" data-image="/images/of14.png">Add to Cart</button>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-3 m-wthree">
								<div class="col-m">
									<a href="#" data-toggle="modal" data-target="#myModal16" class="offer-img">
										<img src="/images/of15.png" class="img-responsive" alt="">
										<div class="offer"><p><span>Offer</span></p></div>
									</a>
									<div class="mid-1">
										<div class="women">
											<h6><a href="single.html">Bread</a>(500 g)</h6>							
										</div>
										<div class="mid-2">
											<p ><label>$1.00</label><em class="item_price">$0.80</em></p>
											  <div class="block">
												<div class="starbox small ghosting"> </div>
											</div>
											<div class="clearfix"></div>
										</div>
											<div class="add">
										   <button class="btn btn-danger my-cart-btn my-cart-b" data-id="16" data-name="Bread" data-summary="summary 16" data-price="0.80" data-quantity="1" data-image="/images/of15.png">Add to Cart</button>
										</div>
									</div>
								</div>
							</div>
							<div class="clearfix"></div>
						 </div>
					</div>
				</div>
			</div>
		
	</div>
	</div>
	</div>

<!--content-->
<div class="content-mid">
	<div class="container">
	<c:set var="i" value="0" scope="page" />
		<c:forEach  begin="0" end="${fn:length(HomeCategories)/2}">
			<div class="col-md-4 m-w3ls">
			<div class="col-md2 ">
				<a href="${HomeCategories[i].targetUrl}">
					<img src="${HomeCategories[i].imageUrl}" class="img-responsive img1" alt="">
					<div class="big-sale2">
						<h3>${HomeCategories[i].name}</h3>
						<p>${HomeCategories[i].description}</p>		
					</div>
				</a>
			</div>
			<c:set var="i" value="${i + 1}" scope="page"/>
			<div class="col-md3 ">
				<a href="${HomeCategories[i].targetUrl}">
					<img src="${HomeCategories[i].imageUrl}" class="img-responsive img1" alt="">
					<div class="big-sale3">
						<h3>${HomeCategories[i].name}</h3>
						<p>${HomeCategories[i].description}</p>
					</div>
				</a>
			</div>
		</div>
		<c:set var="i" value="${i + 1}" scope="page"/>
		</c:forEach>
		<div class="clearfix"></div>
	</div>
</div>
<!--content-->
  <!-- Carousel	${HOME.HOME_BANNERS.value}
    ================================================== -->
    <c:set var="bannerVal" value="${HOME.HOME_BANNERS.value}" />
    <c:set var="dateParts" value="${fn:split(bannerVal, '~')}" />
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="item active">
         <a href="${fn:substring(dateParts[0],0,fn:indexOf(dateParts[0],'-'))}"> <img class="first-slide" src="${fn:substring(dateParts[0],fn:indexOf(dateParts[0],'-')+1,fn:length(dateParts[0]))}" alt="First slide"></a>
       
        </div>
        <div class="item">
         <a href="${fn:substring(dateParts[1],0,fn:indexOf(dateParts[1],'-'))}"> <img class="second-slide " src="${fn:substring(dateParts[1],fn:indexOf(dateParts[1],'-')+1,fn:length(dateParts[1]))}" alt="Second slide"></a>
         
        </div>
        <div class="item">
          <a href="${fn:substring(dateParts[2],0,fn:indexOf(dateParts[2],'-'))}"><img class="third-slide " src="${fn:substring(dateParts[2],fn:indexOf(dateParts[2],'-')+1,fn:length(dateParts[2]))}" alt="Third slide"></a>
          
        </div>
      </div>
    
    </div><!-- /.carousel -->

<!--content-->
	<div class="product">
		<div class="container">
			<div class="spec ">
				<h3>Special Offers</h3>
				<div class="ser-t">
					<b></b>
					<span><i></i></span>
					<b class="line"></b>
				</div>
			</div>
				<div class=" con-w3l">
							<div class="col-md-3 pro-1">
								<div class="col-m">
								<a href="#" data-toggle="modal" data-target="#myModal17" class="offer-img">
										<img src="/images/of16.png" class="img-responsive" alt="">
									</a>
									<div class="mid-1">
										<div class="women">
											<h6><a href="single.html">Moisturiser</a>(500 g)</h6>							
										</div>
										<div class="mid-2">
											<p ><label>$7.00</label><em class="item_price">$6.00</em></p>
											  <div class="block">
												<div class="starbox small ghosting"> </div>
											</div>
											<div class="clearfix"></div>
										</div>
											<div class="add add-2">
										   <button class="btn btn-danger my-cart-btn my-cart-b" data-id="1" data-name="product 1" data-summary="summary 1" data-price="6.00" data-quantity="1" data-image="/images/of16.png">Add to Cart</button>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-3 pro-1">
								<div class="col-m">
									<a href="#" data-toggle="modal" data-target="#myModal18" class="offer-img">
										<img src="/images/of17.png" class="img-responsive" alt="">
									</a>
									<div class="mid-1">
										<div class="women">
											<h6><a href="single.html">  Lady Finger</a>(250 g)</h6>							
										</div>
										<div class="mid-2">
											<p ><label>$5.00</label><em class="item_price">$4.50</em></p>
											  <div class="block">
												<div class="starbox small ghosting"> </div>
											</div>
											<div class="clearfix"></div>
										</div>
											<div class="add">
										   <button class="btn btn-danger my-cart-btn my-cart-b" data-id="1" data-name="product 1" data-summary="summary 1" data-price="4.50" data-quantity="1" data-image="/images/of17.png">Add to Cart</button>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-3 pro-1">
								<div class="col-m">
									<a href="#" data-toggle="modal" data-target="#myModal19" class="offer-img">
										<img src="/images/of18.png" class="img-responsive" alt="">
									</a>
									<div class="mid-1">
										<div class="women">
											<h6><a href="single.html"> Ribbon</a>(1 pc)</h6>							
										</div>
										<div class="mid-2">
											<p ><label>$4.00</label><em class="item_price">$3.50</em></p>
											  <div class="block">
												<div class="starbox small ghosting"> </div>
											</div>
											<div class="clearfix"></div>
										</div>
											<div class="add">
										   <button class="btn btn-danger my-cart-btn my-cart-b" data-id="1" data-name="product 1" data-summary="summary 1" data-price="3.50" data-quantity="1" data-image="/images/of18.png">Add to Cart</button>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-3 pro-1">
								<div class="col-m">
									<a href="#" data-toggle="modal" data-target="#myModal20" class="offer-img">
										<img src="/images/of19.png" class="img-responsive" alt="">
									</a>
									<div class="mid-1">
										<div class="women">
											<h6><a href="single.html">Grapes</a>(500 g)</h6>							
										</div>
										<div class="mid-2">
											<p ><label>$1.00</label><em class="item_price">$0.80</em></p>
											  <div class="block">
												<div class="starbox small ghosting"> </div>
											</div>
											<div class="clearfix"></div>
										</div>
											<div class="add">
										   <button class="btn btn-danger my-cart-btn my-cart-b" data-id="1" data-name="product 1" data-summary="summary 1" data-price="0.80" data-quantity="1" data-image="/images/of19.png">Add to Cart</button>
										</div>
									</div>
								</div>
							</div>
							
							<div class="col-md-3 pro-1">
								<div class="col-m">
								<a href="#" data-toggle="modal" data-target="#myModal21" class="offer-img">
										<img src="/images/of20.png" class="img-responsive" alt="">
									</a>
									<div class="mid-1">
										<div class="women">
											<h6><a href="single.html">Clips</a>(1 pack)</h6>							
										</div>
										<div class="mid-2">
											<p ><label>$7.00</label><em class="item_price">$6.00</em></p>
											  <div class="block">
												<div class="starbox small ghosting"> </div>
											</div>
											<div class="clearfix"></div>
										</div>
											<div class="add">
										   <button class="btn btn-danger my-cart-btn my-cart-b" data-id="1" data-name="product 1" data-summary="summary 1" data-price="6.00" data-quantity="1" data-image="/images/of20.png">Add to Cart</button>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-3 pro-1">
								<div class="col-m">
									<a href="#" data-toggle="modal" data-target="#myModal22" class="offer-img">
										<img src="/images/of21.png" class="img-responsive" alt="">
									</a>
									<div class="mid-1">
										<div class="women">
											<h6><a href="single.html">Conditioner</a>(250 g)</h6>							
										</div>
										<div class="mid-2">
											<p ><label>$5.00</label><em class="item_price">$4.50</em></p>
											  <div class="block">
												<div class="starbox small ghosting"> </div>
											</div>
											<div class="clearfix"></div>
										</div>
											<div class="add">
										   <button class="btn btn-danger my-cart-btn my-cart-b" data-id="1" data-name="product 1" data-summary="summary 1" data-price="4.50" data-quantity="1" data-image="/images/of21.png">Add to Cart</button>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-3 pro-1">
								<div class="col-m">
									<a href="#" data-toggle="modal" data-target="#myModal23" class="offer-img">
										<img src="/images/of22.png" class="img-responsive" alt="">
									</a>
									<div class="mid-1">
										<div class="women">
											<h6><a href="single.html">Cleaner</a>(250 kg)</h6>							
										</div>
										<div class="mid-2">
											<p ><label>$4.00</label><em class="item_price">$3.50</em></p>
											  <div class="block">
												<div class="starbox small ghosting"> </div>
											</div>
											<div class="clearfix"></div>
										</div>
											<div class="add">
										   <button class="btn btn-danger my-cart-btn my-cart-b" data-id="1" data-name="product 1" data-summary="summary 1" data-price="3.50" data-quantity="1" data-image="/images/of22.png">Add to Cart</button>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-3 pro-1">
								<div class="col-m">
									<a href="#" data-toggle="modal" data-target="#myModal24" class="offer-img">
										<img src="/images/of23.png" class="img-responsive" alt="">
									</a>
									<div class="mid-1">
										<div class="women">
											<h6><a href="single.html">Gel</a>(150 g)</h6>							
										</div>
										<div class="mid-2">
											<p ><label>$1.00</label><em class="item_price">$0.80</em></p>
											  <div class="block">
												<div class="starbox small ghosting"> </div>
											</div>
											<div class="clearfix"></div>
										</div>
											<div class="add">
										   <button class="btn btn-danger my-cart-btn my-cart-b" data-id="1" data-name="product 1" data-summary="summary 1" data-price="0.80" data-quantity="1" data-image="/images/of23.png">Add to Cart</button>
										</div>
									</div>
								</div>
							</div>
							<div class="clearfix"></div>
						 </div>
		</div>
	</div>