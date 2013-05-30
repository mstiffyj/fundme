<div id="body">
<?php
/* @var $this ContentController */
/* @var $model Content */


$this->menu=array(
	array('label'=>'List Content', 'url'=>array('index')),
	array('label'=>'Manage Content', 'url'=>array('admin')),
);
?>

<h1>Create Content</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
</div>