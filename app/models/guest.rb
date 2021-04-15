class Guest < Customer
  def guest?
    true
  end

  def name
    'Guest'
  end
end
