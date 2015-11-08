class BuyAndKeep < ActiveRecord::Base
  belongs_to :statement

  def self.import buy_and_keeps, statement_id
    BuyAndKeep.destroy_all
    buy_and_keeps.each do |buy_and_keep_to_import|
      buy_and_keep = BuyAndKeep.new(buy_and_keep_to_import)
      buy_and_keep.statement_id = statement_id
      errors = buy_and_keep.save
      return errors unless errors
    end
  end
end
