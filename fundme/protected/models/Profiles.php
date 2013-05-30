<?php

/**
 * This is the model class for table "profiles".
 *
 * The followings are the available columns in table 'profiles':
 * @property integer $user_id
 * @property string $lastname
 * @property string $firstname
 * @property integer $need
 * @property string $college
 * @property string $career
 * @property string $statement
 * @property string $profileimg
 * @property string $upload1
 * @property string $upload2
 * @property string $upload3
 * @property string $upload4
 * @property string $gpa
 *
 * The followings are the available model relations:
 * @property Users $user
 */
class Profiles extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Profiles the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'profiles';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('need', 'numerical', 'integerOnly'=>true),
			array('lastname, firstname, college, career', 'length', 'max'=>50),
			array('statement', 'length', 'max'=>500),
			array('profileimg, upload1, upload2, upload3, upload4', 'length', 'max'=>255),
			array('gpa', 'length', 'max'=>10),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('user_id, lastname, firstname, need, college, career, statement, profileimg, upload1, upload2, upload3, upload4, gpa', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			'user' => array(self::BELONGS_TO, 'Users', 'user_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'user_id' => 'User',
			'lastname' => 'Lastname',
			'firstname' => 'Firstname',
			'need' => 'Need',
			'college' => 'College',
			'career' => 'Career',
			'statement' => 'Statement',
			'profileimg' => 'Profileimg',
			'upload1' => 'Upload1',
			'upload2' => 'Upload2',
			'upload3' => 'Upload3',
			'upload4' => 'Upload4',
			'gpa' => 'Gpa',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
	 */
	public function search()
	{
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('user_id',$this->user_id);
		$criteria->compare('lastname',$this->lastname,true);
		$criteria->compare('firstname',$this->firstname,true);
		$criteria->compare('need',$this->need);
		$criteria->compare('college',$this->college,true);
		$criteria->compare('career',$this->career,true);
		$criteria->compare('statement',$this->statement,true);
		$criteria->compare('profileimg',$this->profileimg,true);
		$criteria->compare('upload1',$this->upload1,true);
		$criteria->compare('upload2',$this->upload2,true);
		$criteria->compare('upload3',$this->upload3,true);
		$criteria->compare('upload4',$this->upload4,true);
		$criteria->compare('gpa',$this->gpa,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}