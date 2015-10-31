class SurveyResult < ActiveRecord::Base
	validates :patientIdentifier, presence: true
end
