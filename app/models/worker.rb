class Worker < ApplicationRecord
  has_many :jobs, dependent: :destroy

  scope :get_ids, -> { where(id: Job.pluck(:worker_id)) }
end
