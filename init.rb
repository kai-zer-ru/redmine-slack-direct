require 'redmine'

require_dependency 'redmine_slack/listener'

Redmine::Plugin.register :redmine_slack do
	name 'Redmine Slack Direct'
	author 'Kaizer'
	url 'https://github.com/kaizer666/redmine-slack-direct'
	author_url 'https://blog.kai-zer.ru'
	description 'Slack chat integration'
	version '0.1'

	requires_redmine :version_or_higher => '0.8.0'

	settings \
		:default => {
			'callback_url' => 'http://slack.com/callback/',
			'channel' => nil,
			'icon' => 'https://raw.github.com/sciyoshi/redmine-slack/gh-pages/icon.png',
			'username' => 'redmine',
			'display_watchers' => 'yes'
		},
		:partial => 'settings/slack_settings'
end
