class AddContentToTags < ActiveRecord::Migration[6.1]
  def change
    add_column :tags, :content, :text
  end
end
