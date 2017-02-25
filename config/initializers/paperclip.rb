
# config/initializers/paperclip.rb
   # only use Amazon S2 on production servers
   unless Rails.env.development?
     Paperclip::Attachment.default_options[:url] = ':s3_domain_url'
     Paperclip::Attachment.default_options[:path] = '/:class/:attachment/:id_partition/:style/:filename'



     Paperclip::Attachment.default_options = {
         storage: :s3,
         s3_credentials: {
           bucket: ENV.fetch('S3_BUCKET_NAME'),
           access_key_id: ENV.fetch('AWS_ACCESS_KEY_ID'),
           secret_access_key: ENV.fetch('AWS_SECRET_ACCESS_KEY'),
           s3_region: ENV.fetch('AWS_REGION'),
         }
       }
   # # config/initializers/paperclip.rb
    Paperclip::Attachment.default_options[:s3_host_name] = 's3-us-west-2.amazonaws.com'
   end
