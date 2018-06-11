class Completer
  def initialize(readline, env, internal_command = InternalCommand)
    @readline = readline
    @env = env
    @internal_command = internal_command
  end

  def call(input)
    InputCompleter.new(input, @readline, @env, @internal_commander).complete
  end

  private

  attr_reader :input

  def available_completers
    [heads, path] if completing_arguments?
  end
end

class Person
  include ActiveModel::Conversion
  include ActiveModel::Validations

  validates_presence_of :name

  attr_accessor :name

  def initialize(attributes = {})
    @name = attributes[:name]
  end

  def persist
    @persisted = true
  end

  def persisted?
    @persisted
  end
end

person1 = Person.new(name: 'matz')
p person1.valid?
