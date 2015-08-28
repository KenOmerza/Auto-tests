module GeneralHelpers
  def openPage(page, display)
    visit(page)
    dismissOutdatedBrowser
    dismissSurvey
    changeBrowserSize(display)
  end

	def dismissSurvey
		begin
			find(:css, "a.pd-close").click
		rescue Capybara::ElementNotFound
			#Dialog does not exist so ignore error
		end

	end

	def dismissOutdatedBrowser
		begin
			find(:css,"#buorgclose").click
		rescue Capybara::ElementNotFound
			#Dialog does not exist so ignore error
		end

	end

  def changeBrowserSize(type)
      c_window = Capybara.current_session.driver.browser.manage.window
      case type
          when "mobile"
             c_window.resize_to(400,600)
          when "desktop"
             c_window.resize_to(1200,800)
          when "full screen"
            c_window.maximize()
      end
  end

  def setLocation(local)
    begin
      find(:css, "i.icon-magnify-left").click
    rescue Capybara::ElementNotFound
      #if not found then browser window is too large. Do Nothing.
    end
    if (find(:id, 'location_text').text == local)
      return
    else
      fill_in('location_text', :with => local)
      within find(:css, '#autosuggest-dropdown') do
        find(:css, '.first').click
      end
    end
  end

end

World(GeneralHelpers)
