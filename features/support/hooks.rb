Before do
    @app = App.new
end

After do |scenario|
    @t = Time.now.strftime("%H-%M-%S")
    @pasta = Time.now.strftime("%d%b%y")

=begin
    if scenario.failed?
        page.save_screenshot("screenshots/failed/#{@pasta.to_s}/#{@t.to_s}_#{scenario.name}_Fail.png")
    end

    if scenario.passed?
        page.save_screenshot("screenshots/passed/#{@pasta.to_s}/#{@t.to_s}_#{scenario.name}_Pass.png")
    end
=end

end