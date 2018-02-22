class LoginPage

  def initialize(browser)
    @loginPage = browser
  end

  def visit
    @loginPage.goto "my.snhu.edu"
  end

  def login(condition)
    if condition == 'valid'
      @loginPage.text_field(:id => 'username').set "Username"
      @loginPage.text_field(:id => 'password').set "Password"
    elsif condition == 'invalid'
      @loginPage.div.text_field(:id => 'username').set "usr"
      @loginPage.div.text_field(:id => 'password').set "1111111"
    end
    @loginPage.element(:id => "SubmitCreds").click
  end

  def verify_login
    assert('SNHU image exists'){@loginPage.img(:src => "/CookieAuth.dll?GetPic?formdir=5&image=library.jpg").wait_until_present}
    assert('username field exists'){@loginPage.div.text_field(:id => 'username').wait_until_present}
    assert('password field exists'){@loginPage.div.text_field(:id => 'password').wait_until_present}
  end

  def verify_login_error
    assert('login error displayed'){@loginPage.text.include? "You could not be logged on to mySNHU"}
  end
end


