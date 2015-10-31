class SurveyResult < ActiveRecord::Base
	validates :patientIdentifier, presence: true
	validates :operationCode, presence: true
	validates :operationDate, presence: true
	validates :surveyDate, presence: true
end
