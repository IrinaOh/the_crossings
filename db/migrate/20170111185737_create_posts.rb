class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :message
      t.string :howknowus

      t.timestamps
    end
  end
end
