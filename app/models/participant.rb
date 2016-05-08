class Participant < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  validates_processing_of :avatar
  validate :avatar_size_validation

  private
    def avatar_size_validation
      errors[:avatar] << "should be less than 2MB" if avatar.size > 2.megabytes
    end
end
