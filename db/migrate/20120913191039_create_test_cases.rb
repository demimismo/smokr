class CreateTestCases < ActiveRecord::Migration
  def change
    create_table :test_cases do |t|
      t.references :project
      t.string :title
      t.text :description

      t.timestamps
    end
    add_index :test_cases, :project_id
  end
end
