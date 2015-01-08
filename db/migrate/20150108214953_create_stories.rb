class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
			t.string :title
    	t.text :body

    	t.references :user
    	t.references :keyword
      t.timestamps
    end
  end
end
