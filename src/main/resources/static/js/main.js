function openNav() {
    document.getElementById("mySidenav").style.width = "70%";
    // document.getElementById("flipkart-navbar").style.width = "50%";
    document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
    document.body.style.backgroundColor = "rgba(0,0,0,0)";
}
$(document).ready(function(){
	// slideupCat function for slide up the categories when hover
		function slideupCat($cat,$label){
			$('#'+$cat).mouseover(function(){			
				$(this).css('background-position','0 -70px').css('transition','all 0.5s ease-in').css('-webkit-transition','all 0.5s ease-in').css('-moz-transition','all 0.5s ease-in').css('-o-transition','all 0.5s ease-in').css('-ms-transition','all 0.5s ease-in');
				$('#'+$label).css('margin-top','180px').css('transition','all 0.5s ease-in').css('-webkit-transition','all 0.5s ease-in').css('-moz-transition','all 0.5s ease-in').css('-o-transition','all 0.5s ease-in').css('-ms-transition','all 0.5s ease-in');
			});
			$('#'+$cat).mouseout(function(){			
				$(this).css('background-position','0 0').css('transition','all 0.5s ease-in').css('-webkit-transition','all 0.5s ease-in').css('-moz-transition','all 0.5s ease-in').css('-o-transition','all 0.5s ease-in').css('-ms-transition','all 0.5s ease-in');
				$('#'+$label).css('margin-top','250px').css('transition','all 0.5s ease-in').css('-webkit-transition','all 0.5s ease-in').css('-moz-transition','all 0.5s ease-in').css('-o-transition','all 0.5s ease-in').css('-ms-transition','all 0.5s ease-in');
			});
		}

		slideupCat('cat1','lblcat1');
		slideupCat('cat2','lblcat2');
		slideupCat('cat3','lblcat3');
		slideupCat('cat4','lblcat4');
		slideupCat('cat5','lblcat5');
	});

function callFunc()
{
alert(5);	
}