class Person
  # we will remove ApplicationRecord since we are making activemodel.
=begin
  # AttributeMethods

  include ActiveModel::AttributeMethods

  attribute_method_prefix 'reset_'
  attribute_method_suffix '_highest?'
  define_attribute_methods 'age'

  attr_accessor :age

  private
    def reset_attribute(attribute)
      send("#{attribute}=", 0)
    end

    def attribute_highest?(attribute)
      send(attribute) > 100
    end
=end

=begin
  extend ActiveModel::Callbacks #For using activemodel callbacks
  define_model_callbacks :update #here, we will define callbacks name which can have before, after, around callbacks
  before_update :reset_me #call reset_me before_update
  after_update :after_me #call after_me after update
  def update
    run_callbacks(:update) do
      # This method is called when update is called on an object.
    end
  end

  def reset_me
    puts "RESET"
  end

  def after_me
    puts "AFTER"
  end
=end

=begin
  include ActiveModel::Dirty # allow us to track changes
  define_attribute_methods :first_name, :last_name

  def first_name
    @first_name
  end

  def first_name=(value)
    first_name_will_change!
    @first_name = value
  end

  def last_name
    @last_name
  end

  def last_name=(value)
    last_name_will_change!
    @last_name = value
  end

  def save
    # do save work...
    changes_applied
  end
=end

=begin
  include ActiveModel::Validations #Validations

  attr_accessor :name, :email, :token

  validates :name, presence: true
  validates_format_of :email, with: /\A([^\s]+)((?:[-a-z0-9]\.)[a-z]{2,})\z/i
  validates! :token, presence: true
=end

end
