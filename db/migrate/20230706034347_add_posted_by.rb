class AddPostedBy < ActiveRecord::Migration[7.0]
  def change
    add_column :posts,
               :posted_by, :text
  end
end
