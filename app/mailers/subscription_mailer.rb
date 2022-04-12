class SubscriptionMailer < ApplicationMailer

    def new_subscription_email
      @subscription = params[:subscription]
  
      mail(to: @subscription.email, subject: "You got a new subscription!")
    end
end
