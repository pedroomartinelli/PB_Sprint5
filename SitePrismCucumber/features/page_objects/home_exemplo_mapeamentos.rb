class FooterExemploMapeamentos < SitePrism::Section
    element :img_facebook, 'img[name="follow_facebook"]'
end

class ProductsExemploMapeamentos < SitePrism::Section
   element :name, 'a.productName' 
   element :price, ' a.productPrice' 
end
class HomeExemploMapeamentos < SitePrism::Page
    set_url '/'

    element :btn_open_search, '#search #menuSearch'
    elements :menu_itens, '.nav-li-Links a'
    section :footer, FooterExemploMapeamentos, 'footer .ng-scope'
    sections :products, ProductsExemploMapeamentos, '.categoryRight li.ng-scope'
end