class CreateQuotes < ActiveRecord::Migration[7.0]
  def change
    create_table :quotes do |t|
      t.text :body, null:false
      t.date :publication
      t.text :comment
      t.boolean :is_public, default:true
      t.references :user, null: false, foreign_key: true
      t.references :philosopher, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
