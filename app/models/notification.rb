require 'twilio-ruby'

class Notification
  attr_accessor :to_number

  def initialize
    account_sid = "YOUR_ACCOUNT_SID"
    auth_token = "YOUR_AUTH_TOKEN"
    @client = Twilio::REST::Client.new(account_sid, auth_token)
  end

  def text
    # Sends a text to your phone number
  end

  def random_compliment
    # Generates a random compliment to send to the textee
  end

end