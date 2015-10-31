class CreateSurveyResults < ActiveRecord::Migration
  def change
    create_table :survey_results do |t|
      t.string :patientIdentifier
      t.integer :operationCode
      t.date :operationDate
      t.date :surveyDate
      t.integer :surveyResult

      t.timestamps null: false
    end
  end
end
