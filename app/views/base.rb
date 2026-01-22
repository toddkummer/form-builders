# frozen_string_literal: true

module Views
  class Base < Components::Base
    include Phlex::Rails::Helpers::FormWith

    PageInfo = Data.define(:title)

    def around_template
      render layout.new(page_info) do
        main { super }
      end
    end

    def page_info
      PageInfo.new(
        title: page_title
      )
    end
  end
end
