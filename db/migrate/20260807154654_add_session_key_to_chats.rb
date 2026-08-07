class AddSessionKeyToChats < ActiveRecord::Migration[8.1]
  def change
    add_column :chats, :session_key, :string
    add_index :chats, :session_key
  end
end
