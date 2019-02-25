require 'json'
require 'bundler'
Bundler.setup(:deployment)
require 'shindan'

def shindan(event:, context:)
  shindan_id = event['shindan_id']
  name = [*('A'..'z'), *('0'..'9')].sample(10)
  scraper = ::Shindan::Scraper.new(shindan_id, name)

  { statusCode: 200, body: JSON.generate(scraper.shindan.lines.first.chomp) }
rescue => e
  { statusCode: 400, body: JSON.generate(e.message) }
end
