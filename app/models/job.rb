class Job < ApplicationRecord
  belongs_to :worker

  after_destroy :log_destroy_job

  def log_destroy_job
    puts 'Job destroyed'
  end
end
