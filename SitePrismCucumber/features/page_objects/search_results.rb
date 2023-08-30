class SearchResults < SitePrism::Page
    set_url '/#/search'

    element :products, 'div.categoryRight li.ng-scope'
end