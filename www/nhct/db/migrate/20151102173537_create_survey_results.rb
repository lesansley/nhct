class CreateSurveyResults < ActiveRecord::Migration
  def change
    create_table :survey_results do |t|
      t.integer :ResultValue
      t.date :SurveyDate
      t.references :operation, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
