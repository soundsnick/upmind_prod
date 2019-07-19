class IconSocial < ActiveRecord::Migration[5.2]
  def change
    add_column :socials, :icon, :string
  end
end
