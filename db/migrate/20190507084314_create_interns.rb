class CreateInterns < ActiveRecord::Migration[5.1]
  def change
    # model singular, table name plural
    create_table :interns do |t|
      t.string :first_name
      t.string :last_name
      t.references :doctor, foreign_key: true

      t.timestamps
    end
  end
end
