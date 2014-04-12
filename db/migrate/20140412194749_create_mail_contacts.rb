class CreateMailContacts < ActiveRecord::Migration
  def change
    create_table :mail_contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email

      t.timestamps
    end
    add_index :mail_contacts, :email, unique: true
  end
end
