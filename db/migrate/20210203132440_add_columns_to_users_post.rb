class AddColumnsToUsersPost < ActiveRecord::Migration[6.1]
  def change
    add_column :users_posts, :name, :string
    add_column :users_posts, :company, :string
    add_column :users_posts, :station, :string
    add_column :users_posts, :prefuctures, :string
    add_column :users_posts, :address, :string
    add_column :users_posts, :industry, :string
    add_column :users_posts, :floor, :string
    add_column :users_posts, :area, :string
    add_column :users_posts, :rent, :string
    add_column :users_posts, :common, :string
    add_column :users_posts, :deposit, :string
    add_column :users_posts, :features, :string
  end
end