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

  test "Should not save surveyResult without surveyDate" do
  	surveyResult = SurveyResult.new
  	surveyResult.patientIdentifier = 'abc'
  	surveyResult.operationCode = '1'
  	surveyResult.operationDate = '01/01/2001'
    assert_not surveyResult.save, "Saved surveyResult without surveyDate"
  end

  test "Should not save surveyResult if surveyDate is in the future" do
  	surveyResult = SurveyResult.new
  	surveyResult.patientIdentifier = 'abc'
  	surveyResult.operationCode = '1'
  	surveyResult.operationDate = 4
  	assert_operator surveyResult.operationDate, :<=, 6, "Saved surveyResult with surveyDate in the future"
  end


  test "Should not save surveyResult without surveyResult" do
  	surveyResult = SurveyResult.new
  	surveyResult.patientIdentifier = 'abc'
  	surveyResult.operationCode = '1'
  	surveyResult.operationDate = '01/01/2001'
  	surveyResult.surveyDate = '01/01/2001'
    assert_not surveyResult.save, "Saved surveyResult without surveyDate"
  end

end
