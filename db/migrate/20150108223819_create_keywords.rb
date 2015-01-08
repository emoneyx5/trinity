class CreateKeywords < ActiveRecord::Migration
  def change
    create_table :keywords do |t|
			t.string :wordone
      t.string :wordtwo
      t.string :wordthree
      t.timestamps
    end
  end
end
