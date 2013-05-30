<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name;
?>
		<div id="body">
			 	<h1>About</h1>
					<div id="videoWrap">
						<div id="video">
							<video controls>
								<source src="video/movie.mp4" type="video/mp4">
								Your browser does not support the video tag.
							</video>
						</div>
						<div id="mission">
							<h2><?php echo $title; ?></h2>
							<p><?php echo $content; ?></p>
						</div>
					</div>	
		</div><!--End Body-->

<div id="bottomBorder">
	</div>
	<!--End BottomBorder-->
<div id="bottom">
	<div id="bottomWrap">
		<h2><?php echo $title2; ?></h2>
		
		<?php echo $content2; ?>
		<!--End Column2-->
	</div>
	<!--End Bottom Wrap-->
</div>
<!--End Bottom-->
