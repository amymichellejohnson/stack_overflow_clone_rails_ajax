# require "rails_helper"
#
# describe "The upvoting process" do
#   it "increases the vote display with ajax" do
#     user = FactoryGirl.create(:user)
#     login(user)
#     question = FactoryGirl.create(:question, user: user)
#     response = FactoryGirl.create(:response, question: question, user: user)
#     vote = FactoryGirl.create(:vote)
#     visit question_path(question)
#     click_on "vote-btn"
#     expect(page).to have_content "2"
#
#   end
# end
