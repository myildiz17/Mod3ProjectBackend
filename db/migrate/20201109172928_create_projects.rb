class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.integer :time
      t.integer :importance

      t.timestamps
    end
  end
end
