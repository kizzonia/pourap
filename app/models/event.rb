class Event < ApplicationRecord
  has_attached_file :thumbnail, styles: { large: "1200x1000#", medium: "600x500#" }
  storage: :s3,
  s3_credentials: {
    bucket: ENV.fetch('S3_BUCKET_NAME'),
    access_key_id: ENV.fetch('AWS_ACCESS_KEY_ID'),
    secret_access_key: ENV.fetch('AWS_SECRET_ACCESS_KEY'),
    s3_region: ENV.fetch('AWS_REGION'),
  }
}
validates_attachment_content_type :thumbnail, content_type: /\Aimage\/.*\z/

end
