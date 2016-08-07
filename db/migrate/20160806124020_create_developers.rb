class CreateDevelopers < ActiveRecord::Migration[5.0]
  def change
    create_table :developers, id:false do|t|
      t.primary_key :developer_id
      t.string :firstname
      t.string :lastname
      t.string :expertise

      t.timestamps
    end
  end
end
