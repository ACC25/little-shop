require 'rails_helper'

RSpec.describe "guest can view single item page" do
  it "displays an item page" do
    category = Category.create(name: "Potions")
    item = create(:item)
    category2 = Category.create(name: "Food")
    item2 = Item.create(name: "Milk", description: "Feeds the body", price: 2, category_id: category.id)

    visit items_path
    expect(page).to have_content("All Items")
    expect(page).to have_content(item.name)
    expect(page).to have_content(item2.name)

    visit item_path(item)
    expect(page).to have_content("#{item.name}")


  end
end