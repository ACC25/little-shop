class AddStatusToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :status, :boolean, default: true
    add_attachment :items, :avatar
  end
end
