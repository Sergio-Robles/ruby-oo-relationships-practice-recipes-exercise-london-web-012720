class User 

    attr_accessor :name

    @@all = []
    
    def initialize (name)
        @name = name
    
        @@all << self
    end
    
    def self.all 
        @@all
    end
    
    def recipes 
        RecipeCard.all.select { |rec| rec.user == self }
    end

    def add_recipe_card (recipe,date,rating)
        RecipeCard.new(self, recipe, date, rating)
    end

    def declare_allergy(ingredient)
        Allergy.new(self,ingredient)
    end 

    def allergens 
        Allergy.all.select { |aller| aller.user == self }
    end

    def top_three_recipes 

    end 

    def most_recent_recipe
        Recipe.all[-1]
    end

end