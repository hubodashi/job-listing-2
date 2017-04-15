class Resume < ApplicatuonRecord
  belongs_to :user
  belongs_to :job
  mount_uploader :attachment, AttachmentUploader
  validates :content, present: true
end
