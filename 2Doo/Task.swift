//
//  Task.swift
//  2Doo
//
//  Created by David Pinto on 2023-04-15.
//

import Foundation
import RealmSwift

//Task schema 
class Task: Object, ObjectKeyIdentifiable{
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var title = ""
    @Persisted var completed = false
}
