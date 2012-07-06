def code_samples(params)
  data = {
    correct: ["Correct", "success"],
    acceptable: ["Acceptable", "warning"],
    wrong: ["Wrong", "important"]
  }
  code = params.map do |key, code|
    %{<span class="label label-#{data[key].last}">#{data[key].first}</span><code class="language-ruby">#{code}</code>}
  end.join
  %{<pre class="well nolines">#{code}</pre>}
end