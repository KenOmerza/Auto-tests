module Serp_Helper
  #If the name search suggestion is visible
  #Then the search is for a doctor
  def isDoctorSearchVisible(term)
    begin
      expect(page).to have_css('#name_search_sentence')
      return term
    rescue RSpec::Expectations::ExpectationNotMetError
      return "Dr. "+ term
    end
  end
end

World(Serp_Helper)
