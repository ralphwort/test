class Rental < ActiveRecord::Base
  belongs_to :statement

  def self.import rentals, statement_id
    Rental.destroy_all
    rentals.each do |rental_to_import|
      rental = Rental.new(rental_to_import)
      rental.statement_id = statement_id
      errors = rental.save
      return errors unless errors
    end
  end
end
