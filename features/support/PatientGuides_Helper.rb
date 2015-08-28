module PatientGuide_Helper

  def verifyCurrnetBreadCrumb(crumbText)
      begin
        breadcrumb = find(:css, ".bread-crumb")
      rescue Capybara::ElementNotFound
        breadcrumb = find(:css, ".breadcrumbs")
      end
  end

end
World(PatientGuide_Helper)
