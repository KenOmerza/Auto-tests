module ReviewHelpers

  def openReviewPage(type, size)

    case type
    when "Doctor"
      openPage("http://www.vitals.com/review/Dr_Emile_Bacha", size)
    when "Dentist"
      openPage("http://www.vitals.com/review/Dr_Rachel_Shamash", size)
    when "Urgent Care Facility"
      openPage("http://www.vitals.com/review/citymd-new-york-2", size)
    #when "Pharmacy"
    #  openPage("http://www.vitals.com/pharmacy/cvs-pharmacy-449-market-st-elmwood-park-nj/reviews", size)
    end
  end

  def verifyRatingCategory(category)
    #ratingCategories = find(:css, '.form-questions') #only works for Dotcot/Dentist
    expect(page).to have_text(category)

  end


end
World(ReviewHelpers)
