# frozen_string_literal: true

def convert_hash_syntax(old_syntax)
  old_syntax.gsub(/:(\w+)\s*=>\s*/) do
    "#{Regexp.last_match(1)}: "
  end
end
