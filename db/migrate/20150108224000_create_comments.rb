class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
 			t.references :user
    	t.references :story
    	t.integer :sub_id
    	t.integer :parent_id
    	t.string :text
      t.timestamps
    end
  end
end
