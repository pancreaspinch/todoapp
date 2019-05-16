//
//  CoreDataStack.swift
//  TodoApplication
//
//  Created by BHOE on 5/14/19.
//  Copyright © 2019 BHOE. All rights reserved.
//
//Store the data that from the user
import Foundation
import CoreData

class CoreDataStack {
    var container: NSPersistentContainer {
        let container = NSPersistentContainer(name: "Todos")
        container.loadPersistentStores { (description, error) in
            guard error == nil else {
                print("Error: \(error!)")
                return
            }
        }
        
        return container
    }

    var managedContext: NSManagedObjectContext {
        return container.viewContext
    }
}
