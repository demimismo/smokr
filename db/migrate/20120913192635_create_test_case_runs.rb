class CreateTestCaseRuns < ActiveRecord::Migration
  def change
    create_table :test_case_runs do |t|
      t.references :test_case
      t.string :state
      t.text :comment

      t.timestamps
    end
    add_index :test_case_runs, :test_case_id
  end
end
