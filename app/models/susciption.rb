
class Susciption < ApplicationRecord
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
    validates :email, uniqueness: true
    validate :validateEmailServer

    # Validate at least one ckeck 
    validate do |value|
        validationCheck = [value.isMen,value.isChildren, value.isWomen].any? { |x| x == true }
        errors.add(:base, "Should select at least one preference") if !validationCheck
    end

    # Validate if email exist in serves
    def validateEmailServer
         
        require 'net/http'
        require 'net/https'

        url_serviceabs = "https://emailvalidation.abstractapi.com/v1"
        apikey = "b44585dd38e3494ea4f55d17efb414a4"
    
        uri = URI("#{url_serviceabs}/?api_key=#{apikey}&email=#{email}")
        res = Net::HTTP.get_response(uri)
     
        quality_score = JSON.load(res.body)["quality_score"].to_d
        p JSON.load(res.body)


        errors.add :email, :too_plain, message: "email no server #{email}"  if quality_score < 0.7 
    end
end
