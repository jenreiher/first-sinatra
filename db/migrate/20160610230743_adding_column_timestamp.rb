class ChangeMessages < ActiveRecord::Migration
  def change
    change_table :messages do |t|
      t.string :url
      t.remove :title
    end
  end
end
