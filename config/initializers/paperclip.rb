
# config/initializers/paperclip.rb
   # only use Amazon S2 on production servers
   unless Rails.env.development?
     Paperclip::Attachment.default_options[:url] = ':s3_domain_url'
     Paperclip::Attachment.default_options[:path] = '/:class/:attachment/:id_partition/:style/:filename'
    

   # # config/initializers/paperclip.rb
    Paperclip::Attachment.default_options[:s3_host_name] = 's3-us-west-2.amazonaws.com'
   end
