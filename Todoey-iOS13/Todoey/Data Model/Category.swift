//
//  Category.swift
//  Todoey
//
//  Created by ju3un on 2020/06/16.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name: String = ""
    let items = List<Item>()
    
}
