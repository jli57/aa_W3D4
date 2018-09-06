class ChangePollsTitleToUnique < ActiveRecord::Migration[5.1]
  def change
    add_index :polls, :title, unique: true
  end
end
