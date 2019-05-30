class CreateGrades < ActiveRecord::Migration[5.2]
  def change
    create_table :grades do |t|
      t.text :name
      t.text :course
      t.integer :id_num
      t.decimal :prl
      t.decimal :mid
      t.decimal :prf
      t.decimal :fin

      t.timestamps
    end
  end
end
