class Statement < ActiveRecord::Base
  attr_accessor :imported_json
  attr_accessor :added_id

  has_many :calls
  has_many :buy_and_keeps
  has_many :packages
  has_many :rentals
  has_many :subscriptions

  def self.get_and_validate_json
    bill_json = Faraday.new(:url => 'http://safe-plains-5453.herokuapp.com/bill.json').get.body
    @imported_json = JSON.parse File.read(Rails.root.join('spec','fixtures','bill.json'))
    JSON::Validator.fully_validate(JSON::parse(File.read(Rails.root.join('schemas', 'bill_schema.json'))), @imported_json,
                                   :errors_as_objects => true)
  end

  def self.import
    errors = get_and_validate_json
    return errors unless errors == []
    Statement.destroy_all
    add_new_statement @imported_json["statement"]
    Subscription.import @imported_json["package"]["subscriptions"], @added_id
    Call.import @imported_json["callCharges"]["calls"], @added_id
    Rental.import @imported_json["skyStore"]["rentals"], @added_id
    BuyAndKeep.import @imported_json["skyStore"]["buyAndKeep"], @added_id
  end

  private
    def self.add_new_statement statement
      statement_to_insert = statement.slice("generated", "due")
      statement_to_insert.merge!({ from: statement["period"]["from"], to: statement["period"]["to"] })
      statement = Statement.new(statement_to_insert)
      error = statement.save
      @added_id = statement.id
      return false unless error
    end
end
