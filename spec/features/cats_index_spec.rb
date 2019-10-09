require 'rails_helper'

describe "Cats Index" do
    it "shows all cats names" do
        cat_1 = Cat.create(name: "Fluffy", breed: "Long-hair")
        cat_2 = Cat.create(name: "Bob", breed: "Long-hair")
        cat_3 = Cat.create(name: "Kitty", breed: "Tabby")

        visit "/cats"
        # binding.pry
        # save_and_open_page

        expect(page).to have_content(cat_1.name)
        expect(page).to have_content(cat_2.name)
        expect(page).to have_content(cat_3.name)
    end

    it "shows all cats breeds" do
        cat_1 = Cat.create(name: "Fluffy", breed: "Long-hair")
        cat_2 = Cat.create(name: "Bob", breed: "Long-hair")
        cat_3 = Cat.create(name: "Kitty", breed: "Tabby")

        visit cats_path
        # binding.pry
        # save_and_open_page

        expect(page).to have_content(cat_1.breed)
        expect(page).to have_content(cat_2.breed)
        expect(page).to have_content(cat_3.breed)
    end
end