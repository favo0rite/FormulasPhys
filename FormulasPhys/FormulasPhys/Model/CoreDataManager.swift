//
//  CoreDataManager.swift
//  FormulasPhys
//
//  Created by out-zamotaev-pk on 02.09.2021.
//

import UIKit
import CoreData

var formulasCD: [FormulaCD] {
	let request = NSFetchRequest<FormulaCD>(entityName: "FormulaCD")
	
	let sd = NSSortDescriptor(key: "title", ascending: true)
	request.sortDescriptors = [sd]
	
	let array = try? CoreDataManager.sharedInstance.managedObjectContext.fetch(request)
	
	if array != nil {
		return array!
	}
	return []
}

class CoreDataManager {

	static let sharedInstance = CoreDataManager()

	var managedObjectContext: NSManagedObjectContext {
		return persistentContainer.viewContext
	}
	
	lazy var persistentContainer: NSPersistentContainer = {
		let container = NSPersistentContainer(name: "DataModel")
		container.loadPersistentStores(completionHandler: { (storeDescription, error) in
			if let error = error as NSError? {
				fatalError("Unresolved error \(error), \(error.userInfo)")
			}
		})
		return container
	}()

	func saveContext () {
			let context = persistentContainer.viewContext
			if context.hasChanges {
				do {
					try context.save()
				} catch {
					let nserror = error as NSError
					fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
				}
		   }
	 }
}
