//
//  SectionsPhysicsViewController.swift
//  FormulasPhys
//
//  Created by out-zamotaev-pk on 09.08.2021.
//

import UIKit

class SectionsPhysicsViewController: UIViewController, UIGestureRecognizerDelegate {
	
	lazy var sectionsTitle = "1"
	
	lazy var testViewController = TestViewController()
	
	var sectionsPhysics = [
		"Кинематика",
		"Динамика",
		"Статика",
		"Гидростатика",
		"Работа, мощность, энергия",
		"Молекуляная Физика",
		"Термодинамика",
		"Электростатика",
		"Законы постоянного тока",
		"Магнитное поле, электромагнитная индукция",
		"Механические колебания и волны",
		"Электромагнитные колебания и волны",
		"Оптика",
		"Квантовая физика",
		"Свойства пара, жидкостей и твердых тел"
	]
	
	@IBOutlet weak var tableView: UITableView!
	
	@IBOutlet weak var goToFavouritesFormulasButton: UIBarButtonItem!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		setupNavigationBar()
		
		tableView.register(SectionCell.self, forCellReuseIdentifier: SectionCell.reuseId)
		tableView.delegate = self
		tableView.dataSource = self
		tableView.backgroundColor = #colorLiteral(red: 0.2587976158, green: 0.2588401437, blue: 0.258788228, alpha: 1)
		view.backgroundColor = #colorLiteral(red: 0.2587976158, green: 0.2588401437, blue: 0.258788228, alpha: 1)
		self.title = sectionsTitle
	}
	
	func setupNavigationBar() {
		self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
		self.navigationController?.navigationBar.shadowImage = UIImage()
		self.navigationController?.navigationBar.isTranslucent = true
		self.navigationController?.view.backgroundColor = UIColor.clear
		self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
	}
}

extension SectionsPhysicsViewController: UITableViewDelegate, UITableViewDataSource {
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return sectionsPhysics.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: SectionCell.reuseId, for: indexPath) as! SectionCell
		cell.sectionTitleLabel.text = sectionsPhysics[indexPath.row]
		cell.selectionStyle = .none
		
		return cell
	}
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		let indexPath = tableView.indexPathForSelectedRow!
		let title = sectionsPhysics[indexPath.row]
		if sectionsTitle == "Тест" {
			let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Test") as! TestViewController
			controller.sectionTitle = title
			navigationController?.pushViewController(controller, animated: true)
		} else {
			let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FormulasReference") as! FormulasReferenceViewController
			FormulasReferenceViewController.sectionTitle = title
			navigationController?.pushViewController(controller, animated: true)
		}
	}
	
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 60
	}
}
