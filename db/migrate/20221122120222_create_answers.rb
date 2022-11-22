class CreateAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :answers do |t|
      t.integer :user_id, null: false
      t.foreign_key :users

      t.integer :question_id, null: false
      t.foreign_key :questions

      t.string :content, null: false, default: ""

      t.timestamps
    end
  end
end
