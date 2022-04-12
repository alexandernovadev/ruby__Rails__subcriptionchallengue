# Preview all emails at http://localhost:3000/rails/mailers/subscription_mailer
class SubscriptionMailerPreview < ActionMailer::Preview
    def new_subscription_email
    # Set up a temporary order for the preview
    subscription = Subscription.new(email: "joe@gmail.com", isWomen: true,isChildren:true,isMen:false)

    SubscriptionMailer.with(subscription: subscription).new_subscription_email
    end

end
