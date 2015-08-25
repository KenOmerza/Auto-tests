module LifeWise_Helper

  def findCorrectCard(text)
#    cardID = getCardSelector(text)
#    find(:css, cardID).click
    cards = all(:css, '.wayfinding-fade-out')
    found = false
    for card in cards.each do
      if (card.text == text)
        #puts 'found'
          return card
      end
    end
    if found == false
      raise "Unable to find panel with text " + text
    end
  end

  def verifyResults(expected)
    results = all(:css, '.info')
  end


end

World(LifeWise_Helper)
