class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :title, null: false, default: ""
      t.string :description, null: false, default: ""

      t.timestamps
    end
  end
end
