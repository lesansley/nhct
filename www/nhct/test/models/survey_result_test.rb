require 'test_helper'

class SurveyResultTest < ActiveSupport::TestCase
  test "Should not save surveyResult without patientIdentifier" do
  	surveyResult = SurveyResult.new
    assert_not surveyResult.save, "Saved surveyResult without patientIdentifier"
  end
end
