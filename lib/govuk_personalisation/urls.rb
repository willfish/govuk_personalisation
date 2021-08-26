require "plek"

module GovukPersonalisation::Urls
  # Find the GOV.UK URL for the "sign in" page
  #
  # @return [String] the URL
  def self.sign_in
    find_govuk_url(var: "SIGN_IN", application: "frontend", path: "/sign-in")
  end

  # Find the GOV.UK URL for the "sign out" page
  #
  # @return [String] the URL
  def self.sign_out
    find_govuk_url(var: "SIGN_OUT", application: "frontend", path: "/sign-out")
  end

  # Find the GOV.UK URL for the "your account" page
  #
  # @return [String] the URL
  def self.your_account
    find_govuk_url(var: "YOUR_ACCOUNT", application: "frontend", path: "/account/home")
  end

  # Find the external URL for the "manage" page
  #
  # @return [String] the URL
  def self.manage
    find_external_url(var: "MANAGE", application: "account-manager", path: "/account/manage")
  end

  # Find the external URL for the "security" page
  #
  # @return [String] the URL
  def self.security
    find_external_url(var: "SECURITY", application: "account-manager", path: "/account/security")
  end

  # Finds a URL on www.gov.uk.  This method is used so we can have
  # links which work both in production (where the website root is
  # returned) and in local development (where an application URL is
  # returned).
  #
  # If `GOVUK_PERSONALISATION_#{var}_URI` is in the environment, that
  # will be returned.
  #
  # Otherwise, a `www.gov.uk` URL will be returned (a `dev.gov.uk`
  # domain in development mode)
  #
  # @param var         [String] the name of the variable to look up
  # @param application [String] the name of the frontend application, passed to Plek, to use in development mode (if the env var is set, this is ignored)
  # @param path        [String] the path to use (if the env var is set this is ignored)
  #
  # @return [String] the URL
  def self.find_govuk_url(var:, application:, path:)
    value_from_env_var = ENV["GOVUK_PERSONALISATION_#{var}_URI"]
    if value_from_env_var
      value_from_env_var
    else
      plek_application_uri = Rails.env.development? ? Plek.find(application) : Plek.new.website_root
      "#{plek_application_uri}#{path}"
    end
  end

  # Finds a URL outside www.gov.uk
  #
  # If `GOVUK_PERSONALISATION_#{var}_URI` is in the environment, that
  # will be returned.
  #
  # Otherwise, an application URL generated by Plek will be returned.
  #
  # @param var         [String] the name of the variable to look up
  # @param application [String] the name of the frontend application, passed to Plek (if the env var is set, this is ignored)
  # @param path        [String] the path to use (if the env var is set this is ignored)
  #
  # @return [String] the URL
  def self.find_external_url(var:, application:, path:)
    ENV.fetch("GOVUK_PERSONALISATION_#{var}_URI", "#{Plek.find(application)}#{path}")
  end
end