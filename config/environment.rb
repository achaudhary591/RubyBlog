# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

#dealing with the action view code
ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
  html_tag.html_safe
end
