class CreateOperations < ActiveRecord::Migration
  def change
    create_table :operations do |t|
      t.integer :OperationCode
      t.date :OperationDate
      t.references :patient, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
