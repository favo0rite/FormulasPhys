//
//  FormulaCD+CoreDataClass.swift
//  FormulasPhys
//
//  Created by out-zamotaev-pk on 02.09.2021.
//
//

import UIKit
import CoreData

@objc(FormulaCD)
public class FormulaCD: NSManagedObject {

	class func addFormulaInFormulasCD(title: String) {
		let context = CoreDataManager.sharedInstance.managedObjectContext
		guard let entity = NSEntityDescription.entity(forEntityName: "FormulaCD", in: context) else { return }
		let formula = FormulaCD(entity: entity, insertInto: context)
		var formulaTitle = ""
		var formulaValue = ""
		for formula in Formulas.allFormulas {
			if formula.title == title {
				formulaTitle = formula.title
				formulaValue = formula.formula
			}
		}
		formula.title = formulaTitle
		formula.formula = formulaValue

		do {
			try context.save()
		} catch let error as NSError {
			print(error.localizedDescription)
		}
	}

	class func deleteFromFormulasCD(tittle: String) {
		let context = CoreDataManager.sharedInstance.managedObjectContext
		for formula in formulasCD {
			if formula.title == tittle {
				context.delete(formula)
			}
		}
	
		do {
			try context.save()
		} catch let error as NSError {
			print(error.localizedDescription)
		}
	}
}
