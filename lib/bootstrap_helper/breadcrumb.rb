module BootstrapHelper
  module Breadcrumb
    def self.included(receiver)
      receiver.extend         ClassMethods
      receiver.send :include, InstanceMethods
      receiver.send :helper, Helpers
      receiver.send :before_filter, :set_breadcrumbs
    end

    module ClassMethods
    end

    module InstanceMethods
      protected

      def set_breadcrumbs
        @breadcrumbs = ["<a href='/'>首页</a>".html_safe]
      end

      def set_admin_breadcrumbs
        @breadcrumbs = ["<a href='/admin/'>首页</a>".html_safe]
      end

      def drop_breadcrumb(title = nil, url = nil)
        title ||= @page_title

        if title && url
          @breadcrumbs.push("<a href='#{url}'>#{title}</a>".html_safe)
        elsif title
          @breadcrumbs.push(title.to_s.html_safe)
        end
      end

      def drop_page_title(title)
        @page_title = title
        @page_title
      end

      def no_breadcrumbs
        @breadcrumbs = []
      end
    end

    module Helpers
      def render_breadcrumb
        return "" if @breadcrumbs.size <= 0
        prefix = "".html_safe
        crumb = "".html_safe

        @breadcrumbs.each_with_index do |c, i|
          breadcrumb_class = []
          breadcrumb_class << "first" if i.zero?
          breadcrumb_class << "last active" if i == (@breadcrumbs.length - 1)

          breadcrumb_content = c

          crumb += content_tag(:li, breadcrumb_content, class: breadcrumb_class) + "\n"
        end
        prefix + content_tag(:ul, crumb, class: "breadcrumb menu clearfix")
      end
    end
  end
end
