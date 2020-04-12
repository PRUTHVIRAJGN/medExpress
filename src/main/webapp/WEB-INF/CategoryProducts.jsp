 <!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="item active">
           <a href="kitchen.html"><img class="first-slide" src="/images/ba.jpg" alt="First slide"></a>
       
        </div>
        <div class="item">
          <a href="care.html"> <img class="second-slide " src="/images/ba1.jpg" alt="Second slide"></a>
         
        </div>
        <div class="item">
           <a href="hold.html"><img class="third-slide " src="/images/ba2.jpg" alt="Third slide"></a>
          
        </div>
      </div>
    
    </div><!-- /.carousel -->

<c:if test="${fn:length(CategoryExtraCategories)>0}">
<!--content-->
<div class="content-mid">
	<div class="container">
	<c:set var="i" value="0" scope="page" />
		<c:forEach  begin="0" end="${fn:length(CategoryExtraCategories)/2}">
			<div class="col-md-4 m-w3ls">
			<div class="col-md2 ">
				<a href="${CategoryExtraCategories[i].targetUrl}">
					<img src="${CategoryExtraCategories[i].imageUrl}" class="img-responsive img1" alt="">
					<div class="big-sale2">
						<h3>${CategoryExtraCategories[i].name}</h3>
						<p>${CategoryExtraCategories[i].description}</p>		
					</div>
				</a>
			</div>
			<c:set var="i" value="${i + 1}" scope="page"/>
			<div class="col-md3 ">
				<a href="${CategoryExtraCategories[i].targetUrl}">
					<img src="${CategoryExtraCategories[i].imageUrl}" class="img-responsive img1" alt="">
					<div class="big-sale3">
						<h3>${CategoryExtraCategories[i].name}</h3>
						<p>${CategoryExtraCategories[i].description}</p>
					</div>
				</a>
			</div>
		</div>
		<c:set var="i" value="${i + 1}" scope="page"/>
		</c:forEach>
		<div class="clearfix"></div>
	</div>
</div>
</c:if>

<!--content-->
		<div class="product">
		<div class="container">
			<div class="spec ">
				<h3>Products</h3>
				<div class="ser-t">
					<b></b>
					<span><i></i></span>
					<b class="line"></b>
				</div>
			</div>
			
							 <div class="col-md-6">
				  <nav>
				 <ul class="pagination pagination-sm">
					<li><h3>showing <span style="color:#FDA30E;text-weight:900">1</span> of <span style="color:#FDA30E;text-weight:900">50</span> Products</h3></li>
				  </ul>
				  </nav>		 
			 </div>
			 
			 <div class="col-md-6">
				<nav>
				  <ul class="pagination">
					<li class="active"><a href="#">Popularity<span class="sr-only">(current)</span></a></li>
					<li><a href="#">Low To High</a></li>
					<li><a href="#">High To Low</a></li>
					</ul>
					<ul class="pagination">
					<li><a href="#">Discount</a></li>
					<li><a href="#">A - Z</a></li>
					<li><a href="#">Z - A</a></li>
				 </ul>
			   </nav>
				</div>
			<script type="text/javascript">
			var productsList=JSON.parse('${CategoryProductsJson}');
			function LoadMoreProducts()
			{
				for(i=0;i<=11;i++)
					{
				var prodPrice=productsList[i].productPrice-(productsList[i].productPrice*(productsList[i].productDiscount/100));
				$("#productsList").append($('<div class="col-md-3 pro-1"><div class="col-m"><a href="'+productsList[i].productTargetUrl+'" data-toggle="modal" data-target="#myModal1" class="offer-img"><img src="'+productsList[i].productImageUrl+'" class="img-responsive" alt=""></a><div class="mid-1"><div class="women"><h6><a href="'+productsList[i].productTargetUrl+'">'+productsList[i].productName+'</a></h6></div><div class="mid-2"><p><label>'+productsList[i].productPrice+'</label><em class="item_price">'+prodPrice+'</em></p><div class="block"><div class="starbox small ghosting"><div class="positioner"><div class="stars"><div class="ghost" style="display: none; width: 42.5px;"></div><div class="colorbar" style="width: 42.5px;"></div><div class="star_holder"><div class="star star-0"></div><div class="star star-1"></div><div class="star star-2"></div><div class="star star-3"></div><div class="star star-4"></div></div></div></div></div></div><div class="clearfix"></div></div><div class="add"><button class="btn btn-danger my-cart-btn my-cart-b" data-id="24" data-name="Wheat" data-summary="summary 24" data-price="6.00" data-quantity="1" data-image="/images/of24.png">Add to Cart</button></div></div></div></div>'));
					}
			}
			</script>
				<div class=" con-w3l agileinf">
							
							
							<div id="productsList">
							
							
							
							
							<c:forEach begin="0" end="11" varStatus="loop">
							
							<div class="col-md-3 pro-1">
								<div class="col-m">
								<a href="${CategoryProductsList[loop.index].productTargetUrl}" data-toggle="modal" data-target="#myModal1" class="offer-img">
										<img src="${CategoryProductsList[loop.index].productImageUrl}" class="img-responsive" alt="">
									</a>
									<div class="mid-1">
										<div class="women">
											<h6><a href="${CategoryProductsList[loop.index].productTargetUrl}">${CategoryProductsList[loop.index].productName}</a></h6>							
										</div>
										<div class="mid-2">
										<c:choose>
										<c:when test="${CategoryProductsList[loop.index].productIsInDiscount==true}">
											<p ><label>${CategoryProductsList[loop.index].productPrice}</label><em class="item_price">${CategoryProductsList[loop.index].productPrice-(CategoryProductsList[loop.index].productPrice*(CategoryProductsList[loop.index].productDiscount/100))}</em></p>
										</c:when>
										<c:otherwise>
										<p ><em class="item_price">${CategoryProductsList[loop.index].productPrice}</em></p>
										</c:otherwise>
										</c:choose>
											  <div class="block">
												<div class="starbox small ghosting"> </div>
											</div>
											<div class="clearfix"></div>
										</div>
											<div class="add">
										   <button class="btn btn-danger my-cart-btn my-cart-b" data-id="24" data-name="Wheat" data-summary="summary 24" data-price="6.00" data-quantity="1" data-image="/images/of24.png">Add to Cart</button>
										</div>
									</div>
								</div>
							</div>
							
							</c:forEach>
							
							
							</div>
							
							
							
							
				
							<div class="clearfix"></div>
						 </div>
						 
						 <div class="col-md-6">
				  <nav>
				 <ul class="pagination pagination-sm">
					<li><h3>showing <span style="color:#FDA30E;text-weight:900">1</span> of <span style="color:#FDA30E;text-weight:900">50</span> Pages</h3></li>
				  </ul>
				  </nav>		 
			 </div>
			 
			 <div class="col-md-6">
				<nav>
				  <ul class="pagination">
					<li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
					<li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#">6</a></li>
					<li><a href="#">7</a></li>
					<li><a href="#">8</a></li>
					<li><a href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li>
				 </ul>
			   </nav>
				</div>
				
				
	<div class="spec ">
				 <ul class="pagination">
					<li class="active"><a href="javascript:void(0)" onclick="LoadMoreProducts()">Load More Products&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-spinner"></i></a></li>
					
				 </ul>
			</div>
				
				
		</div>
	</div>