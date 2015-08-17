 module PharmacyHelpers

   @@leaderboardTop = "728,90,880,150,970,250,970,90"
   @@rectangle = "300,250,300,600,300,1050"
   @@skyscraper = "160,600"
   def verifyads
     for i in 1..evaluate_script("window.app.advert.logs.definedSlot.length") do
        case i
        when 1
          expect(evaluate_script("window.app.advert.logs.definedSlot[#{i-1}].size.toString()")).to eq(@@leaderboardTop)
        when 2
          expect(evaluate_script("window.app.advert.logs.definedSlot[#{i-1}].size.toString()")).to eq(@@skyscraper)
        when 3
          expect(evaluate_script("window.app.advert.logs.definedSlot[#{i-1}].size.toString()")).to eq(@@rectangle)
        end

        #puts(evaluate_script("window.app.advert.logs.definedSlot[#{i-1}].name.toString()"))
        #puts(evaluate_script("window.app.advert.logs.definedSlot[#{i-1}].size.toString()"))
     end
   end

end

World(PharmacyHelpers)
