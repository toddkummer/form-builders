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

          javascript_importmap_tags

          link rel: "stylesheet",
               href: "https://unpkg.com/stimulus-datepicker@1.0.5/css/datepicker.css"
          link rel: "stylesheet",
               href: "https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css",
               integrity: "sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==",
               crossorigin: "anonymous",
               referrerpolicy: "no-referrer"
          stylesheet_link_tag :app, "data-turbo-track": "reload"
        end

        body do
          yield
        end
      end
    end
  end
end
