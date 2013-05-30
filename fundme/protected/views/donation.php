<?php
/* @var $this ProfilesController */
/* @var $model Profiles */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'profiles-donation-form',
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'need'); ?>
		<?php echo $form->textField($model,'need'); ?>
		<?php echo $form->error($model,'need'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'lastname'); ?>
		<?php echo $form->textField($model,'lastname'); ?>
		<?php echo $form->error($model,'lastname'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'firstname'); ?>
		<?php echo $form->textField($model,'firstname'); ?>
		<?php echo $form->error($model,'firstname'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'college'); ?>
		<?php echo $form->textField($model,'college'); ?>
		<?php echo $form->error($model,'college'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'career'); ?>
		<?php echo $form->textField($model,'career'); ?>
		<?php echo $form->error($model,'career'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'statement'); ?>
		<?php echo $form->textField($model,'statement'); ?>
		<?php echo $form->error($model,'statement'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'profileimg'); ?>
		<?php echo $form->textField($model,'profileimg'); ?>
		<?php echo $form->error($model,'profileimg'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'upload1'); ?>
		<?php echo $form->textField($model,'upload1'); ?>
		<?php echo $form->error($model,'upload1'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'upload2'); ?>
		<?php echo $form->textField($model,'upload2'); ?>
		<?php echo $form->error($model,'upload2'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'upload3'); ?>
		<?php echo $form->textField($model,'upload3'); ?>
		<?php echo $form->error($model,'upload3'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'upload4'); ?>
		<?php echo $form->textField($model,'upload4'); ?>
		<?php echo $form->error($model,'upload4'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'gpa'); ?>
		<?php echo $form->textField($model,'gpa'); ?>
		<?php echo $form->error($model,'gpa'); ?>
	</div>


	<div class="row buttons">
		<?php echo CHtml::submitButton('Submit'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->