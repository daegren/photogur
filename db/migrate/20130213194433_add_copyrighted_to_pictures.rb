class AddCopyrightedToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :copyrighted, :boolean

    Picture.reset_column_information 

    Picture.all.each do |picture|
      picture.copyrighted = false
      picture.save!
    end
  end
end
