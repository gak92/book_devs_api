class CreateDevelopers < ActiveRecord::Migration[7.0]
  def change
    create_table :developers do |t|
      t.string :name
      t.string :image
      t.text :description
      t.string :title
      t.integer :rating
      t.integer :salary_exp
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
