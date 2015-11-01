class SurveyResult < ActiveRecord::Base
	validates_presence_of :patientIdentifier, :operationCode, :operationDate, :surveyDate, :surveyResult
	validates :surveyDate, :timeliness => {:on_or_before => lambda { Date.current }, :type => :date}
end
