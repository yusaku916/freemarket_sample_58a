class CreateTableStatus < ActiveRecord::Migration[5.2]
  def change
    create_table :statuses do |t|
    t.string :status

    end
  end
end
