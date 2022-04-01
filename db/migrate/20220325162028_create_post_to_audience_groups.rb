class CreatePostToAudienceGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :post_to_audience_groups do |t|
      t.integer :post_id
      t.integer :audience_group_id

      t.timestamps
    end
  end
end
