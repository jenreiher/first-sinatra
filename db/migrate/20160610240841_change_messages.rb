class ChangeMessages < ActiveRecord::Migration
  def change
    change_table :messages do |t|
      t.timestamps
    end
  end
end
