class Attachment < ApplicationRecord
  mount_uploader :attachment_path, AttachmentUploader
  belongs_to :course
end
