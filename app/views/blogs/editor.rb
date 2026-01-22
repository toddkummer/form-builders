# frozen_string_literal: true

module Views
  module Blogs
    class Editor < Views::Base
      include Phlex::Rails::Helpers::LinkTo

      def initialize(blog)
        @blog = blog
      end

      def page_title = "Blogs Editor"
      def layout = Components::Layout

      def view_template
        h1 { "Editing Blog" }

        form_with(model: @blog, builder: CustomFormBuilder) do |form|
          div do
            form.label :title, style: "display: block"
            form.text_field :title
          end

          div do
            form.label :content, style: "display: block"
            form.text_area :content
          end

          div do
            form.label :published_at, style: "display: block"
            form.date_field :published_at
          end

          div do
            form.submit "Save Blog"
          end

          link_to "Back to blogs", blogs_path
        end
      end
    end
  end
end
