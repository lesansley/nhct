require 'test_helper'

class SurveyResultTest < ActiveSupport::TestCase
  test "Should not save surveyResult without patientIdentifier" do
  	surveyResult = SurveyResult.new
    assert_not surveyResult.save, "Saved surveyResult without patientIdentifier"
  end

  test "Should not save surveyResult without operationCode" do
  	surveyResult = SurveyResult.new
  	surveyResult.patientIdentifier = 'abc'
    assert_not surveyResult.save, "Saved surveyResult without operationCode"
  end

  test "Should not save surveyResult without operationDate" do
  	surveyResult = SurveyResult.new
  	surveyResult.patientIdentifier = 'abc'
  	surveyResult.operationCode = '1'
    assert_not surveyResult.save, "Saved surveyResult without operationDate"
  end

end
