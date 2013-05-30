<div id="body">
<?php
/* @var $this ProfilesController */
/* @var $dataProvider CActiveDataProvider */

?>

<h1>Students</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
</div>