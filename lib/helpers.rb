include Nanoc::Helpers::Rendering
include Nanoc3::Helpers::LinkTo
include Nanoc3::Helpers::Blogging

def stylesheet_link_tag(*names)
  names.map do |name|
    %{<link rel="stylesheet" type="text/css" href="/stylesheets/#{name}.css" media="screen" />}
  end.join("\n")
end

def blog?
  %w{blog article}.include?(@item[:kind])
end