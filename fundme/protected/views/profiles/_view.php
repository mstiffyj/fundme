<?php
/* @var $this ProfilesController */
/* @var $data Profiles */
?>

<div class="body">
	<div id="students">
		<div id="studentWrap">
			<div class="student">
				<h4><?php echo CHtml::link(CHtml::encode($data->firstname), array('view', 'id'=>$data->user_id)); ?></h4>
				<img src="<?php echo CHtml::encode($data->profileimg); ?>">
			</div>
		</div>
	</div>

</div>