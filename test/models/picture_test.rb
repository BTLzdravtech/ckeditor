require 'test_helper'

class PictureTest < ActiveSupport::TestCase
  def teardown
    @picture.destroy rescue nil
  end

  test "Set file content_type and size" do
    @picture = create_picture

    assert_equal 'rails.png', @picture.data_file_name

    case CKEDITOR_BACKEND
    when :dragonfly
      assert @picture.url_thumb.include?('thumb_rails')
    when :active_storage
      assert @picture.url_thumb =~ /\/representations\/.*\/rails.png/
    when :shrine
      assert @picture.url_thumb =~ /\S{32}\.png/
    else
      assert @picture.url_thumb.include?('thumb_rails.png')
    end

    if @picture.has_dimensions?
      assert_equal 50, @picture.width
      assert_equal 64, @picture.height
    end
  end
end
