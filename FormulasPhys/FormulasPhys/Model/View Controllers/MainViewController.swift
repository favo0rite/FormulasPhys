//
//  MainViewController.swift
//  FormulasPhys
//
//  Created by out-zamotaev-pk on 29.07.2021.
//

import UIKit

class MainViewController: UIViewController {
	
	@IBOutlet weak var testButton: UIButton!
	
	@IBOutlet weak var referenceeButton: UIButton!
	
	var titleSectionsPhysics = ""
	
	@IBAction func testButtonAction(_ sender: UIButton) {
		titleSectionsPhysics = sender.titleLabel?.text ?? "Тест"
	}
	
	@IBAction func ReferenceButtonAction(_ sender: UIButton) {
		titleSectionsPhysics = sender.titleLabel?.text ?? "Справочник"
	}
	override func viewDidLoad() {
		super.viewDidLoad()
		
		view.backgroundColor = #colorLiteral(red: 0.2587976158, green: 0.2588401437, blue: 0.258788228, alpha: 1)
		testButton.clipsToBounds = true
		testButton.layer.cornerRadius = 6
		referenceeButton.clipsToBounds = true
		referenceeButton.layer.cornerRadius = 6
		addFormulasInDatabaseAtTheFirstLaunch()
	}
	
	func addFormulasInDatabaseAtTheFirstLaunch() {
		if formulasCD.isEmpty {
			for formula in Formulas.allFormulas {
				FormulaCD.addFormulaInFormulasCD(title: formula.title)
			}
		}
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		super.prepare(for: segue, sender: sender)
		if segue.identifier == "Тест" {
			let navigationVC = segue.destination as! UINavigationController
			let sectionsPhysicsVC = navigationVC.topViewController as! SectionsPhysicsViewController
			sectionsPhysicsVC.sectionsTitle = "Тест"
		} else if segue.identifier == "Справочник"{
			let navigationVC = segue.destination as! UINavigationController
			let sectionsPhysicsVC = navigationVC.topViewController as! SectionsPhysicsViewController
			sectionsPhysicsVC.sectionsTitle = "Справочник"
		} else {
			return
		}
	}
}
