class AddUserIdToAddTags < ActiveRecord::Migration[6.1]
  def change
    add_column :add_tags, :user_id, :integer
  end
end
