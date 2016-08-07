class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks, id:false do |t|
      t.primary_key :task_id
      t.string :name
      t.text :description
      t.belongs_to :developer, index: true
      t.belongs_to :project, index: true

      t.timestamps null: false
    end
  end
end
