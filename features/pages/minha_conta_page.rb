class MinhaContaPage < SitePrism::Page
    set_url '?controller=my-account'

    element :title_page,'.page-heading'
    element :account_name, '[title="View my customer account"]'

end