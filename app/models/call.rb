class Call < ActiveRecord::Base
  belongs_to :statement

  def self.import calls, statement_id
    Call.destroy_all
    calls.each do |call_to_import|
      call = Call.new(call_to_import)
      call.statement_id = statement_id
      errors = call.save
      return errors unless errors
    end
  end
end
