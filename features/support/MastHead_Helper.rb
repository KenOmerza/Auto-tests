
 module MastHead_Helpers

  def compareCategories(categories)
    arr = (all(:css, "li.ui-autocomplete-category"))
    arrComapre = Array.new
    #puts(arr.next.text + " " + arr.next.text)
    begin
      arr.each do |category|
         #First letter of each word should be capitalized
        #puts(category.text)
        if category.text == "URGENT CARE CENTERS"
          arrComapre << "Urgent Care Centers"
        else
          arrComapre << category.text.capitalize
        end
      end
    rescue StopIteration
        puts(expected.to_s " were all found in the dropdown.")
    end
    begin
      categories.each do |item|
        expect(arrComapre).to have_text(item)
      end
    end
  end

  def findInSearchAutocompelte(search)
    autoComplete = find(:id, "autosuggest-dropdown")
    expect(autoComplete).to have_text(search)
  end

  def selectHealthInsurance(company, plan)
    find(:css, '.mini-selector').click
    fill_in 'ic0000', :with => company
    within(:css, '#ui-id-2') do
      find(:css, 'li.ui-menu-item').click
    end
    fill_in 'ip0000', :with => plan

  end

  def verifyNotInSearchAutoCompelte(search)
    autoComplete = find(:id, "autosuggest-dropdown")
    expect(autoComplete).not_to have_text(search)
  end

end
World(MastHead_Helpers)
