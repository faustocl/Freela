class CreateAnalyses < ActiveRecord::Migration
  def change
    create_table :environmental_analyses do |t|
      t.integer :user_id, :null => false
      t.date :year_and_month, :default => Date.today
      t.decimal :grade, :precision => 5, :decimal => 2, :default => 0.0

      t.timestamps null: false
    end
  end
end
