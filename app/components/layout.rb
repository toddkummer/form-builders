module Components
  class Layout < Components::Base
    include Phlex::Rails::Helpers::CSRFMetaTags
    include Phlex::Rails::Helpers::CSPMetaTag
    include Phlex::Rails::Helpers::JavascriptImportmapTags
    include Phlex::Rails::Helpers::StylesheetLinkTag

    def initialize(page_info)
      @page_info = page_info
    end

    def view_template
      doctype

      html do
        head do
          title { @page_info.title }

          meta name: "viewport", content: "width=device-width, initial-scale=1"
          meta name: "apple-mobile-web-app-capable", content: "yes"
          meta name: "mobile-web-app-capable", content: "yes"

          csrf_meta_tags
          csp_meta_tag

          link rel: "icon", type: "image/png", sizes: "32x32", href: "/favicon-32x32.png"
          link rel: "icon", type: "image/png", sizes: "16x16", href: "/favicon-16x16.png"

          javascript_importmap_tags

          link rel: "stylesheet",
               href: "https://unpkg.com/stimulus-datepicker@1.0.5/css/datepicker.css"
          stylesheet_link_tag :app, "data-turbo-track": "reload"
        end

        body do
          yield
        end
      end
    end
  end
end
