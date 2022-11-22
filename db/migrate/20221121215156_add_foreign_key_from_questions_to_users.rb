class AddForeignKeyFromQuestionsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :questions, :user_id, :integer, null: false
    add_foreign_key :questions, :users
  end
end
