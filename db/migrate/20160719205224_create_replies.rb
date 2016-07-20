class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.references :post, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.text :text
      t.integer :rating_out_of_ten

      t.timestamps null: false
    end
  end
end
