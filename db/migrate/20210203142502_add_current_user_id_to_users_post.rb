class AddCurrentUserIdToUsersPost < ActiveRecord::Migration[6.1]
  def change
    add_column :users_posts, :current_user_id, :string
  end
end
