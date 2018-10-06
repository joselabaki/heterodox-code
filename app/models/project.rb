class Project < ApplicationRecord
  mount_uploaders :images, ImageUploader
  mount_uploader :attachment, AttachmentUploader

extend FriendlyId
friendly_id :title , use: :slugged

def should_generate_new_friendly_id?
    title_changed?
  end


    validates :title, :abstract , presence: true
    translates :title , :text

    def next
      Project.where("id > ?", id).limit(1).first
    end

    def previous
      Project.where("id < ?", id).limit(1).first
    end

end
