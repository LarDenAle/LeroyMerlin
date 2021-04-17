//
//  MainScreenModel.swift
//  LeroyMerlin
//
//  Created by Denis Larin on 17.04.2021.
//

import Foundation

// По хорошему конечно делается парсинг данных,
// Соответственно структуры данных карточек товара и каталога будут совсем другие
// тк таких данных нет - решено было использовать скриншоты товаров и каталога

struct TabsM {
    
    var image: [String]
    
}

struct CatalogM {
    
    var id = UUID().uuidString
    var asset : String
    var title: String
    
}

struct BestPriceM {
    
    var id = UUID().uuidString
    var asset : String
    var title: String
    
}

struct LimitedOfferM {
    
    var id = UUID().uuidString
    var asset : String
    var title: String
    
}
