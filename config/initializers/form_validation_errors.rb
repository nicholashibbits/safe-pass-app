ActionView::Base.field_error_proc = proc do |html_tag, _instance|
  match = html_tag.to_s.match(/class\s*=\s*"([^"]*)"/)
  html_tag.start_with?("<label") ? html_tag.html_safe : html_tag.to_s.gsub(match[0], "class=\"#{match[1]} input-with-errors\"").html_safe
end
