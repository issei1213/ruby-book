require "minitest/autorun"
require "./lib/convert_hash_syntax"

class ConvertHashSyntaxTest < Minitest::Test
  def test_convert_hash_syntax
    old_syntax = <<~TEXT
    {
      :name => "Alice",
      :age=>20,
      :gendor  =>  :femail
    }
    TEXT
    expected = <<~TEXT
    {
      name: "Alice",
      age: 20,
      gendor: :femail
    }
    TEXT
    assert_equal expected, convert_hash_syntax(old_syntax)
  end
end