//
//  DataBaseController.swift
//  SINTHORESP
//
//  Created by Daniel Erichsen on 07/06/20.
//  Copyright © 2020 DNA360. All rights reserved.
//

import Foundation
import CoreData


class DataBaseController {
    static var persistentController: NSPersistentContainer = {
        let container = NSPersistentContainer (name: "SINTHORESP")
        container.loadPersistentStores(completionHandler: {(storeDescription,erro) in
            if let erro = erro as NSError? {
                fatalError("Erro ao criar base de dados \(erro) , \(erro.userInfo)")
            }
        })
        return container
    }()
    
    init() {}
    
    class func getContext() -> NSManagedObjectContext {
        return DataBaseController.persistentController.viewContext
    }
    
    class func saveContext (_ context:NSManagedObjectContext ) {
        if context.hasChanges {
            do  {
                try context.save()
            } catch {
                let nserror = error as NSError
                fatalError("Erro ao acessa bande de dados \(nserror.userInfo)")
            }
        }
    }
}
