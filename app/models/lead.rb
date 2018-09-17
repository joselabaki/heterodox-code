class Lead < ApplicationRecord
    after_create :add_mailchimp_subscriber

    validates :email , presence: true



  def add_mailchimp_subscriber
    client = Mailchimp::API.new('<your mailchimp api key>')
    client.lists.subscribe('<your mailchimp list id>', {email: email}, {'FNAME' => first_name, 'LNAME' => last_name})
  end
  
end
