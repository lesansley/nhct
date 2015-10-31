class SurveyResult < ActiveRecord::Base
	validates :patientIdentifier, presence: true
	validates :operationCode, presence: true
end
