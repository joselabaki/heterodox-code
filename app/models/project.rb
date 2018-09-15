class Project < ApplicationRecord
  mount_uploaders :images, ImageUploader

  
extend FriendlyId
friendly_id :title , use: :slugged

def should_generate_new_friendly_id?
    title_changed?
  end


    validates :title, presence: true

    translates :title , :text

  
end
