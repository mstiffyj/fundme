<?php
/* @var $this ProfilesController */
/* @var $model Profiles */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'profiles-form',
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'lastname'); ?>
		<?php echo $form->textField($model,'lastname',array('size'=>50,'maxlength'=>50)); ?>
		<?php echo $form->error($model,'lastname'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'firstname'); ?>
		<?php echo $form->textField($model,'firstname',array('size'=>50,'maxlength'=>50)); ?>
		<?php echo $form->error($model,'firstname'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'need'); ?>
		<?php echo $form->textField($model,'need'); ?>
		<?php echo $form->error($model,'need'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'college'); ?>
		<?php echo $form->textField($model,'college',array('size'=>50,'maxlength'=>50)); ?>
		<?php echo $form->error($model,'college'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'career'); ?>
		<?php echo $form->textField($model,'career',array('size'=>50,'maxlength'=>50)); ?>
		<?php echo $form->error($model,'career'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'statement'); ?>
		<?php echo $form->textField($model,'statement',array('size'=>60,'maxlength'=>500)); ?>
		<?php echo $form->error($model,'statement'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'profileimg'); ?>
		<?php echo $form->textField($model,'profileimg',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'profileimg'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'upload1'); ?>
		<?php echo $form->textField($model,'upload1',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'upload1'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'upload2'); ?>
		<?php echo $form->textField($model,'upload2',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'upload2'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'upload3'); ?>
		<?php echo $form->textField($model,'upload3',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'upload3'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'upload4'); ?>
		<?php echo $form->textField($model,'upload4',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'upload4'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'gpa'); ?>
		<?php echo $form->textField($model,'gpa',array('size'=>10,'maxlength'=>10)); ?>
		<?php echo $form->error($model,'gpa'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->