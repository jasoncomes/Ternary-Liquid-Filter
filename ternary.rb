# frozen_string_literal: true

# ternary / https://www.notion.so/highereducation/ternary-6a23288e4f7043918375ec01dc752829
# If variable exists then output it, otherwise output the alternative.
# {{ variable | ternary: parameter }}

module Ternary
  def ternary(content, ternary_content = '')
    content = content.to_s

    # Return if empty
    return if (content.nil? || content.empty?) && (ternary_content.nil? || ternary_content.empty?)

    # Return results
    !content.nil? && !content.empty? ? content : ternary_content
  end
end

Liquid::Template.register_filter(Ternary)
