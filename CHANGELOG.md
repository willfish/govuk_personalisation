# 0.11.1

- Change sign in path to `/account` ([#28](https://github.com/alphagov/govuk_personalisation/pull/28))

# 0.11.0

- Remove references to the account manager from the URLs module ([#26](https://github.com/alphagov/govuk_personalisation/pull/26))

# 0.10.1

- Make session-change events uncacheable ([#24](https://github.com/alphagov/govuk_personalisation/pull/24))

# 0.10.0
- Add `url_with_analytics` helper to allow apps to access the URL used for `redirect_with_analytics` ([#22](https://github.com/alphagov/govuk_personalisation/pull/22))

# 0.9.0
- Add `redirect_with_analytics` helper, attaches _ga and cookie_consent values from existing params to redirects. ([#19](https://github.com/alphagov/govuk_personalisation/pull/19))
- Add `GovukPersonalisation::Redirect` and `.build_url` helper to construct valid URLs with additional parameters. ([#19](https://github.com/alphagov/govuk_personalisation/pull/19))

# 0.8.0

- Change sign in path to `/sign-in/redirect` ([#17](https://github.com/alphagov/govuk_personalisation/pull/17))

# 0.7.0

- Add `GovukPersonalisation::Urls` module ([#14](https://github.com/alphagov/govuk_personalisation/pull/14) [#16](https://github.com/alphagov/govuk_personalisation/pull/16))

# 0.6.0

- Add `GovukPersonalisation::Flash` and helper methods to the concern ([#9](https://github.com/alphagov/govuk_personalisation/pull/9))
- Ensure every method has RDoc ([#10](https://github.com/alphagov/govuk_personalisation/pull/10))
- Remove unused `GovukPersonalisation::Error` class ([#10](https://github.com/alphagov/govuk_personalisation/pull/10))
- BREAKING: Rename `GovukPersonalisation::AccountConcern` to `GovukPersonalisation::ControllerConcern` ([#11](https://github.com/alphagov/govuk_personalisation/pull/11))

# 0.5.0

- Rename header name constants ([#7](https://github.com/alphagov/govuk_personalisation/pull/7))

# 0.4.0

- Add ability to set GOVUK-Account-Session ([#6](https://github.com/alphagov/govuk_personalisation/pull/6))

# 0.3.0

- Always set `Vary: GOVUK-Account-Session` response header ([#4](https://github.com/alphagov/govuk_personalisation/pull/4))

# 0.2.0

- Add AccountConcern to extract common account-related functionality ([#3](https://github.com/alphagov/govuk_personalisation/pull/3))

# 0.1.0

- Initial release
