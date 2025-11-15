require "json"
require "http/client"

class Echoes
  API_PATH = "api"
  def initialize
    @headers = HTTP::Headers {
      "Content-Type" => "application/json",
      "User-Agent" => "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36"
    }
    uri = URI.parse("https://echoes.soferity.com")
    @http_client = HTTP::Client.new(uri)
  end

  def get_quotes() : JSON::Any
    JSON.parse(@http_client.get("/#{API_PATH}/quotes", headers: @headers).body)
  end

  def get_quote(quote_id : Int32) : JSON::Any
    JSON.parse(@http_client.get("/#{API_PATH}/quotes/#{quote_id}", headers: @headers).body)
  end

  def get_random_quote() : JSON::Any
    JSON.parse(@http_client.get("/#{API_PATH}/quotes/random", headers: @headers).body)
  end
end
