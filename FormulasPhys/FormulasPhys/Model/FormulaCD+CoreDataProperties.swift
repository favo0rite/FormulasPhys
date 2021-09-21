//
//  FormulaCD+CoreDataProperties.swift
//  FormulasPhys
//
//  Created by out-zamotaev-pk on 02.09.2021.
//
//

import UIKit
import CoreData


extension FormulaCD {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<FormulaCD> {
        return NSFetchRequest<FormulaCD>(entityName: "FormulaCD")
    }

    @NSManaged public var title: String
    @NSManaged public var formula: String

}

extension FormulaCD : Identifiable {

}
