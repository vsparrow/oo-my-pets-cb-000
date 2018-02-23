class Dog
  attr_accessor :owner,:mood #:name,
  attr_reader :name

  def initialize(name=nil,mood="nervous",owner=nil)
    @name=name
    @owner=owner
    @mood=mood
  end
end
