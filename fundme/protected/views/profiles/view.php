<div id ="body">
<?php
/* @var $this ProfilesController */
/* @var $model Profiles */
?>

<h1>Student Profile</h1>

<div id="profileWrap">
	<div id="profilePic">
		<img src="<?php echo $model->profileimg; ?>">
	</div>
	<!--End Profile Pic-->
	
	<div id="profileInfo">
		<h2><?php echo $model->firstname; ?></h2>
		<ul>
			<li><strong>College:</strong>	<?php echo $model->college; ?></li>
			<li><strong>GPA:</strong>		<?php echo $model->gpa; ?></li>
			<li><strong>Need:</strong>		<?php echo $model->need; ?></li>
			<li><strong>Career:</strong>	<?php echo $model->career; ?></li>
		</ul>
		<br/>
		<br/>
		<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
		<input type="hidden" name="cmd" value="_donations">
		<input type="hidden" name="business" value="donations@fundme.com">
		<input type="hidden" name="lc" value="US">
		<input type="hidden" name="item_name" value="FundMe">
		<input type="hidden" name="item_number" value="<?php echo $model->firstname; ?> <?php echo $model->lastname; ?>'s college fund">
		<input type="hidden" name="no_note" value="0">
		<input type="hidden" name="currency_code" value="USD">
		<input type="hidden" name="bn" value="PP-DonationsBF:btn_donate_LG.gif:NonHostedGuest">
		<input type="image" src="images/donate.png" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
		<img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
		</form>
		
	</div>
	<!--End Profile Info-->
	
</div>	
<!--End Profile Wrap-->
<div id="statement">
	<h2>Statement</h2>
	<?php echo $model->statement; ?>
</p>
</div>
<!--End Statement-->

</div>

<div id="bottomBorder">
	</div>
	<!--End BottomBorder-->

	<div id="bottom">
		<div id="bottomWrap">
			<h2>Uploads</h2>
			<div id="uploadSection">
			
			<ul id="uploads">
				<li><a href="<?php echo $model->upload1; ?>" rel="lightbox"><img src="<?php echo $model->upload1; ?>"></a></li>
				<li><a href="<?php echo $model->upload2; ?>" rel="lightbox" ><img src="<?php echo $model->upload2; ?>"></a></li>
				<li><a href="<?php echo $model->upload3; ?>" rel="lightbox"><img src="<?php echo $model->upload3; ?>"></a></li>
				<li><a href="<?php echo $model->upload4; ?>" rel="lightbox"><img src="<?php echo $model->upload4; ?>"></a></li>	

			</ul>
			</div>
		</div>
		<!--End Bottom Wrap-->
	</div>
	<!--End Bottom-->