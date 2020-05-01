class Recipe 

    attr_reader :name

    @@all = []
    
    def initialize(name)
        @name = name
    
        @@all << self
    end
    
    def self.all 
        @@all
    end

    def recipe_cards
        RecipeCard.all.select {|recipe_card| recipe_card.recipe == self}
    end

    def users
        recipe_cards.map {|instance| instance.user}
    end

    def num_user
        users.length
    end

    def self.most_popular
        Recipe.all.max_by {|recipe| recipe.num_user }
    end

    def ingredients 
        RecipeIngredient.all.select { |rec| rec.recipe == self }
    end

    def allergens 

    end

    def add_ingredients (ingredient_array)
        ingredient_array = [ingredient3, ingredient4]
        RecipeIngredient.new(self, ingredient_array)
    end

end