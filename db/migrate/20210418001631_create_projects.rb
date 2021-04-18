class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :subtitle
      t.string :images
      t.text :description
      t.string :slug

      t.timestamps
    end
    add_index :projects, :slug, unique: true
  end
end
