class AddReadToEmails < ActiveRecord::Migration[7.1]
  def change
    add_column :emails, :read, :boolean
  end
end
