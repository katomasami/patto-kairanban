class CreateNotices < ActiveRecord::Migration[6.1]
  def change
    create_table :notices do |t|
      t.string :title
      t.string :body
      t.integer :user_id
      t.timestamps
    end
  end
end
