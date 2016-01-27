<<<<<<< HEAD
require 'twilio-ruby'
require 'pry'

class ContactController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def send_text
    account_sid = ENV['TW_SID']
    auth_token = ENV['TW_TOKEN']
    number = ENV['TW_NUMBER']
    # This specific ENV[''] format 
    
    @contact = Contact.find(params[:id])

    # set up a client to talk to the Twilio REST API 
    @client = Twilio::REST::Client.new account_sid, auth_token 
     
    @client.account.messages.create({
      :from => number, 
      :to => @contact.phone, 
      :body => params[:body],  
    })
  end
end
=======
require 'twilio-ruby' 
require 'pry'

class ContactController < ApplicationController
	def index
		@contacts = Contact.all
	end

	def send_text
		account_sid = ENV['TW_SID']
		auth_token = ENV['TW_TOKEN']
		number = ENV['TW_NUMBER']

		@contact = Contact.find(params[:id])

		# set up a client to talk to the Twilio REST API 
		@client = Twilio::REST::Client.new account_sid, auth_token 
		 
		@client.account.messages.create({
			:from => number, 
			:to => @contact.phone, 
			:body => params[:body] 
		})

		redirect_to root_path
	end
end
>>>>>>> 878be3fff2551f9a3538597651ef64f3762b7eee
