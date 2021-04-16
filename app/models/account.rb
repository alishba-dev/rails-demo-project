class Account < ApplicationRecord
  belongs_to :supplier
  has_one :account_history

  # def perform_changes
  #   transaction do
  #     abc = Account.lock('FOR UPDATE NOWAIT').find_by(name: 'abc')
  #     xyz = Account.lock('FOR UPDATE NOWAIT').find_by(name: 'xyz')
  #     abc.name = 'ABC'
  #     abc.save!
  #     xyz.name = 'XYZ'
  #     xyz.save!
  #   end

  end
end
