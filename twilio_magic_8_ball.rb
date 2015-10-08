require 'rubygems'
require 'twilio-ruby'

account_sid = "AC3a91743eac13bec50255872ed1390074"
auth_token = "f5cb3cfdbd25119da0dc56a25c765081"

@client = Twilio::REST::Client.new(account_sid, auth_token)

puts "Ask the magic 8-ball a question"
question = gets.chomp

answer = Array["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely", "You may rely on it", "As I see it, yes", "Most likely", "Outlook good", "Yes", "Signs point to yes", "Reply hazy try again", "Ask again later", "Better not tell you now", "Cannot predict now", "Concentrate and ask again", "Don't count on it", "My reply is no", "My sources say no", "Outlook not so good", "Very doubtful"]

text = "You asked the magic 8-ball: #{question}\nThe magic 8 ball predicts: #{answer[rand(answer.size)]}"
puts text

message = @client.account.messages.create(
	:from => "+19069346042",
	:to => "+19492463684",
	:body => text
)
