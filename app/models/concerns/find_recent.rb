module FindRecentExtension
  def find_recent
    where('created_at > ?', 1.days.ago)
  end
end
