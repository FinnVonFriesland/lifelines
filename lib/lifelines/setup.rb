require 'fileutils'

class Setup

  def initialize
    FileUtils.mkdir_p(File.expand_path("../../../screenshots", __FILE__))
    initate_browser
    set_timeout
    set_browser_size
    $browser
  end

  private

  def initate_browser
    case $arg
      when 'chrome'
        $browser = Watir::Browser.new :chrome
      when 'firefox'
        $browser = Watir::Browser.new :firefox
      when 'headless'
        start_headless
    end
    $browser.goto('florbeer.marsair.tw')
  end

  def set_timeout
    Watir.default_timeout = 30
    $browser.driver.manage.timeouts.implicit_wait = 5
  end

  def set_browser_size
    $browser.driver.manage.window.move_to(0, 0)
    #width = $b.execute_script('return screen.width;')
    #height = $b.execute_script('return screen.height;')
    resize_view(1024, 768)
  end

  def start_headless
    $headless = Headless.new
    $headless.start
    $browser = Watir::Browser.start 'florbeer.marsair.tw'
  end

  def resize_view(width, height)
    $browser.driver.manage.window.resize_to(width, height)
  end

end
