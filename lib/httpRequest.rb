require 'net/http'
require 'net/https'
module Services

class Request
    
    uri = URI( 'https://emailvalidation.abstractapi.com/v1/?api_key=b44585dd38e3494ea4f55d17efb414a4&email=titoantifa69@gmail.com' )

    def make_abstract_request

        http = Net::HTTP.new(uri.host, uri.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_PEER

        request =  Net::HTTP::Get.new(uri)

        response = http.request(request)

        puts "Status code: #{ response.code }"

        puts "Response body: #{ response.body }"

        rescue StandardError => error

        puts "Error (#{ error.message })"
        end
    end
end


