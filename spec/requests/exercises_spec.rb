require 'spec_helper'
require 'database_cleaner'
DatabaseCleaner.strategy = :truncation

#exercises 10
describe "Home page" do

  subject { page }

  let(:admin) { FactoryGirl.create(:admin) }
  before do
  	sign_in admin
  	visit root_path
  end

  describe "should display 0 microposts" do
  	it { should have_content("0 microposts") }
  end

  describe "after creating a micropost" do
  	before do
  		fill_in 'micropost_content', with: "bla"
  		click_button "Post"
  	end
  	it "should display 1 micropost" do
  		page.should have_content("1 micropost")
  	end
  end
  describe "after creating multiple posts" do
<<<<<<< HEAD
    before(:all)  { 40.times { FactoryGirl.create(:micropost, user: admin, content: "bla") } }
    after(:all)   { admin.microposts.delete_all }
    before { visit root_path }
=======
  	before(:all) 	{ 40.times { FactoryGirl.create(:micropost, user: admin, content: "bla") } }
  	after(:all) 	{ admin.microposts.delete_all }
  	before { visit root_path }
>>>>>>> following-users

    it "should have pagination" do      
      page.should have_selector('div.pagination')
    end
  end  
end

DatabaseCleaner.clean