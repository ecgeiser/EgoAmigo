require 'twilio-ruby'
require_relative '../../credentials'

class Notification
  attr_accessor :to_number

  def initialize(options={})
    self.to_number = options[:to_number]
    account_sid = Credentials.credentials[:twilio_account_sid]
    auth_token = Credentials.credentials[:twilio_account_token]
    @client = Twilio::REST::Client.new(account_sid, auth_token)
  end

  def text
    message = @client.account.messages.create(
      :body => random_compliment,
      :to => self.to_number,
      :from => "+17039910311")
    
    puts message.to
  end

  def random_compliment
    compliments = [
      "Your instructors love you",
      "You are magnificent",
      "Your code is so dry it makes me thirsty",
      "Your code is so RESTful it makes Sleeping Beauty look like an insomniac",
      "*clap*"
    ]

    @compliment = compliments.sample
  end

end