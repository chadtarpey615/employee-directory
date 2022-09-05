class AddGravatarToEmployee < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :gravatar, :string
  end
end
