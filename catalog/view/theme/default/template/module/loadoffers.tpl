<?php if(!empty($productsonoffer)) { ?>
<style type="text/css">
.peroff {
	margin-top: -10px; 	
}
.mainoffer img {
	max-height: 450px
}
</style>
<div class="container panel">
  <div class="center box-heading"><?php echo $heading_title; ?></div>
	<div class="panel-content" style="text-align: center;">
	  <div class="col-xs-12">
	  	<?php foreach($productsonoffer as $key => $product) { 
		  	$thumb = $product['image'];
		  	if(!empty($thumb)) {
		  		$thumb = 'image/'.$thumb;
		  	} else {
		  		$thumb = 'image/no_image.png';
		  	}
		  	$perc = ($product['realprice'] - $product['price'])/100;
		  	$href = 'index.php?route=product/product&product_id='.$product['product_id'];
		  	if($key == 0) { ?>
			  	<div class="mainoffer col-xs-12 col-sm-6">
			  		<a href="<?php echo $href ?>">
			  			<img class="img-responsive" src="<?php echo $thumb ?>"/>
			  			<span class="peroff col-xs-12"><?php echo $perc. ' % Off'; ?></span>
			  		</a>
			  	</div>
			  	<div class="col-xs-12 col-sm-6">
		  	<?php } else { ?>
		  			<div class="otheroffers col-xs-4"> 
		  				<a href="<?php echo $href ?>">
				  			<img class="img-responsive" src="<?php echo $thumb ?>"/>
				  			<span class="peroff col-xs-12"><?php echo $perc. ' % Off'; ?></span>
				  		</a>
		  			</div>
		  	<?php }	} ?>
		  		</div>
	  </div>
	</div>
</div>
<?php } ?>