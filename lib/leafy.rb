require "leafy/version"
require 'mechanize'

module Leafy
  class Client
    def initialize(room: '', domain: 'leafy.in', email: '', password: '')
      @login_url = "https://#{room}.#{domain}/accounts/sign_in"
      @email     = email
      @password  = password
      @agent     = Mechanize.new
    end

    def post!(message)
      main_page = login!(@email, @password)
      form = main_page.form(id: 'new_status')
      form.field_with(name: 'status[text]').value = message
      @agent.submit(form)

      message
    end

    private

    def login!(email, password)
      logint_page = @agent.get(@login_url)
      form = logint_page.form
      form.field_with(name: 'user[email]').value = email
      form.field_with(name: 'user[password]').value = password
      @agent.submit(form)
    end
  end
end
