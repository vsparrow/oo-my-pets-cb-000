class Owner
  # code goes here
  attr_accessor :name,:owner, :pets# :fishes, :dogs, :cats
  attr_reader :species
  @@all = []
  def initialize(name=nil,species="human",owner=nil)
    @name=name
    @owner=owner
    @@all << self
    @species=species
    @pets = {:fishes => [], :dogs => [], :cats =>[]}
    # @fishes = []
    # @dogs = []
    # @cats = []
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def list_pets
    # @pets[:fishes].each {|fish| fish.mood = "nervous"}
    # @pets[:cats].each {|cat| cat.mood = "nervous"}
    # @pets[:dogs].each {|dog| dog.mood = "nervous"}
    # @pets = {:fishes => [], :dogs => [], :cats =>[]}
    fish = @pets[:fishes].count
    cat = @pets[:cats].count
    dog = @pets[:dogs].count
    # @pets = {:fishes => [], :dogs => [], :cats =>[]}
    "I have #{fish} fish, #{dog} dog(s), and #{cat} cat(s)."

  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def say_species
    "I am a #{@species}."
  end

  def sell_pets
    @pets[:fishes].each {|fish| fish.mood = "nervous"}
    @pets[:cats].each {|cat| cat.mood = "nervous"}
    @pets[:dogs].each {|dog| dog.mood = "nervous"}
    @pets = {:fishes => [], :dogs => [], :cats =>[]}
  end

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end
end
