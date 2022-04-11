class Susciption < ApplicationRecord
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
    validates :email, uniqueness: true

    # Validate at least one ckeck 
    validate do |value|
        validationCheck = [value.isMen,value.isChildren, value.isWomen].any? { |x| x == true }
        errors.add :isMen, :too_plain, message: "is not cool enough" if !validationCheck
    end
end
