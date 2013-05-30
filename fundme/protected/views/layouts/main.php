<?php /* @var $this Controller */ ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="language" content="en" />

	<!-- blueprint CSS framework -->
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/screen.css" media="screen, projection" />
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/print.css" media="print" />
	<!--[if lt IE 8]>
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/ie.css" media="screen, projection" />
	<![endif]-->

	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/main.css" />
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/form.css" />
	<link href="<?php echo Yii::app()->request->baseUrl; ?>/css/lightbox.css" rel="stylesheet" />
	<script src="<?php echo Yii::app()->request->baseUrl; ?>/js/jquery-1.7.2.min.js"></script>
	<script src="<?php echo Yii::app()->request->baseUrl; ?>/js/lightbox.js"></script>

	<title><?php echo CHtml::encode($this->pageTitle); ?></title>
</head>

<body>

<div id="container">

	<div id="header">
		<div id="user">
			<ul id="userLinks">
				<?php $this->widget('zii.widgets.CMenu',array(
					'items'=>array(
							array('label'=>'Content', 'url'=>array('/content'), 'visible'=>Yii::app()->user->checkAccess('admin')),
						array('label'=>'Edit Profile', 'url'=>array('/user/profile'), 'visible'=>!Yii::app()->user->isGuest),
						array('label'=>'Logout ('.Yii::app()->user->name.')', 'url'=>array('/site/logout'), 'visible'=>!Yii::app()->user->isGuest),
						array('label'=>'Login', 'url'=>array('/site/login'), 'visible'=>Yii::app()->user->isGuest),
						array('label'=>'Register', 'url'=>array('/user/registration'), 'visible'=>Yii::app()->user->isGuest),
					),
				)); ?>
			</ul><!--End UserLinks-->
		</div><!--End User-->
		
		<div id="wrap">			
			<div id="logo">
				<a href="<?php echo Yii::app()->getHomeUrl();?>"><img src="images/logo.png"></a>
			</div><!--End Logo-->
			<div id="nav">
				<div id="navLinks">
					<?php $this->widget('zii.widgets.CMenu',array(
						'items'=>array(
							array('label'=>'Home', 'url'=>array('/site/index')),
							array('label'=>'About', 'url'=>array('/site/about')),
							array('label'=>'Students', 'url'=>array('/profiles')),
							array('label'=>'Contact', 'url'=>array('/site/contact')),
						),
					)); ?>
				</div><!-- navlinks -->
			</div><!-- nav -->
		</div><!--End Wrap-->
		
	</div><!-- header -->

	<?php if(isset($this->breadcrumbs)):?>
		<?php $this->widget('zii.widgets.CBreadcrumbs', array(
			'links'=>$this->breadcrumbs,
		)); ?><!-- breadcrumbs -->
	<?php endif?>

	<?php echo $content; ?>

	<div class="clear"></div>

	<div id="footer">
		<div id="footNav">
			<div id="footNavLinks">
				<?php $this->widget('zii.widgets.CMenu',array(
					'items'=>array(
						array('label'=>'Copyright 2013'),
						array('label'=>'About', 'url'=>array('/site/about')),
						array('label'=>'Contact', 'url'=>array('/site/contact'))
					),
				)); ?>			</div><!--End FootNavLinks-->
		</div><!--End FootNav-->
	</div><!-- footer -->
</div><!-- page -->


</body>
</html>
