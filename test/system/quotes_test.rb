require "application_system_test_case"

class QuotesTest < ApplicationSystemTestCase
  setup do
    @quote = quotes(:one)
  end

  test "visiting the index" do
    visit quotes_url
    assert_selector "h1", text: "Quotes"
  end

  test "should create quote" do
    visit quotes_url
    click_on "New quote"

    fill_in "Body", with: @quote.body
    fill_in "Category", with: @quote.category_id
    fill_in "Comment", with: @quote.comment
    check "Is public" if @quote.is_public
    fill_in "Philosopher", with: @quote.philosopher_id
    fill_in "Publication", with: @quote.publication
    fill_in "User", with: @quote.user_id
    click_on "Create Quote"

    assert_text "Quote was successfully created"
    click_on "Back"
  end

  test "should update Quote" do
    visit quote_url(@quote)
    click_on "Edit this quote", match: :first

    fill_in "Body", with: @quote.body
    fill_in "Category", with: @quote.category_id
    fill_in "Comment", with: @quote.comment
    check "Is public" if @quote.is_public
    fill_in "Philosopher", with: @quote.philosopher_id
    fill_in "Publication", with: @quote.publication
    fill_in "User", with: @quote.user_id
    click_on "Update Quote"

    assert_text "Quote was successfully updated"
    click_on "Back"
  end

  test "should destroy Quote" do
    visit quote_url(@quote)
    click_on "Destroy this quote", match: :first

    assert_text "Quote was successfully destroyed"
  end
end
