require 'pry'
class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species

  @@owners = []

    def initialize(name)
        @name = name
        @@owners<<self
        @species = "human"
        @pets = {fishes: [], cats: [], dogs: []}
    end

    def self.all
        @@owners
    end

    def self.reset_all
        @@owners =  []
    end

    def self.count
        @@owners.count
    end

    def say_species
        "I am a #{@species}."
    end

    def buy_fish(name)
        @pets[:fishes] << Fish.new(name)
    end


     def buy_cat(name)
            @pets[:cats] << Cat.new(name)
    end

     def buy_dog(name)
        @pets[:dogs] << Dog.new(name)
    end

    def walk_dogs
        @pets[:dogs].each { |dog| dog.mood="happy" }
    end

    def play_with_cats
        @pets[:cats].each { |cat| cat.mood="happy" }
    end

    def feed_fish
        @pets[:fishes].each { |fish| fish.mood="happy" }
    end

    # def sell_pets
    #     @pets[:fishes].each { |fish| fish.mood="nervous" }
    #      @pets[:cats].each { |cat| cat.mood="nervous" }
    #      @pets[:dogs].each { |dog| dog.mood="nervous" }
    #     @pets = {fishes: [], cats: [], dogs: []}
    # end


  def sell_pets
        @pets.each do | species, names|
            names.each do |name|
                name.mood ="nervous"
            end
        end
        @pets = {fishes: [], cats: [], dogs: []}
    end


    def list_pets
        "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
    end


end
