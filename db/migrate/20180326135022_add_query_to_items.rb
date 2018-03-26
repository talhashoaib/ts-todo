class AddQueryToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :query, :text
  end
end
