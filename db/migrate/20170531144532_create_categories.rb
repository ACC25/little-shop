class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :slug
      t.index  :slug, unique: true
    end
  end
end
