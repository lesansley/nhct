class SurveyResult < ActiveRecord::Base
	validates :patientIdentifier, presence: true
	validates :operationCode, presence: true
	validates :operationDate, presence: true
	validates :surveyDate, presence: true
	validates :surveyResult, presence: true
	validates :surveyDate, :timeliness => {:on_or_before => lambda { Date.current }, :type => :date}
	
end
