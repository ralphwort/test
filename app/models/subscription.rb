class Subscription < ActiveRecord::Base
  belongs_to :statement

  def self.import subscriptions, statement_id
    Subscription.destroy_all
    subscriptions.each do |subscription_to_import|
      subscription = Subscription.new(subscription_to_import)
      subscription.statement_id = statement_id
      errors = subscription.save
      return errors unless errors
    end
  end

  alias_attribute :type, :sub_type
end
