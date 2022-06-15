class AddTagIdToAddTags < ActiveRecord::Migration[6.1]
  def change
    add_column :add_tags, :tag_id, :integer
  end
end
