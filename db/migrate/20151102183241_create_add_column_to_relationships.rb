class CreateAddColumnToRelationships < ActiveRecord::Migration
  def change
    add_column :relationships, :follower_id, :integer 
    add_column :relationships, :followed_id, :integer
    end
end