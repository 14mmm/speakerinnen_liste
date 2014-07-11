###############
# conventions #
###############
# All steps are ordered by their categories:
# 1) Given
# 2) When
# 3) Then
#
# Each step file groups certain steps together.
# This step file contains all steps to:
# simulate a user with a certain role and certain
# permission attributes.

############
# 1) Given #
############

Given /^you are signed in as (user|admin)$/ do |role|
  @user = (role == 'admin') ? FactoryGirl.create(:admin) : FactoryGirl.create(:user)
  sign_in @user
end

###########
# 2) When #
###########

###########
# 3) Then #
###########
