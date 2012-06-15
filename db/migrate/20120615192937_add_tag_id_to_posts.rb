class AddTagIdToPosts < ActiveRecord::Migration
  def up
  	add_column :posts, :tag_id, :integer
  end

  def down
  	remove_column :posts, :tag_id
  end
end
