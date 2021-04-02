class Job < ApplicationRecord
  after_destroy :log_destroy_job

  def log_destroy_job
    puts 'Job destroyed'
  end
end
