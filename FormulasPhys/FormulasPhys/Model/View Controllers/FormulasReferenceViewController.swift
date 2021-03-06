//
//  FormulaReferenceViewController.swift
//  FormulasPhys
//
//  Created by out-zamotaev-pk on 03.08.2021.
//

import UIKit

class FormulasReferenceViewController: UIViewController {
	
	static let screenSize: CGRect = UIScreen.main.bounds
	
	static var sectionTitle = ""
	
	static var formulas = Formulas.WorkPowerEnergy.formulas
	
	let formulaViewUI = FormulaViewCard()
	
	let scrollView = UIScrollView()
	
	var formulaIndex = 0
	
	var formulaViews: [FormulaViewCard] = []
	
	static var formulaTitleLabelSize: CGFloat = 18
	
	static var symbolLabelSize: CGFloat = 30
	
	static var formulaTitleLabels: [String] = []
	
	let formulasStackView: UIStackView = {
		let stackView = UIStackView()
		stackView.backgroundColor = #colorLiteral(red: 0.2587976158, green: 0.2588401437, blue: 0.258788228, alpha: 1)
		stackView.axis = .vertical
		stackView.alignment = .fill
		stackView.distribution = .fillEqually
		stackView.spacing = 5
		return stackView
	}()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		setupUISize()
		view.backgroundColor = #colorLiteral(red: 0.2587976158, green: 0.2588401437, blue: 0.258788228, alpha: 1)
		self.title = FormulasReferenceViewController.sectionTitle
		getFormulasList()
		setupNavigationBar()
		setupScrollView()
		addFormulaCards()
	}
	
	func setupUISize() {
		if FormulasReferenceViewController.screenSize.width > 415 {
			FormulasReferenceViewController.symbolLabelSize = 33
		}
		if FormulasReferenceViewController.screenSize.width > 410 {
			FormulasReferenceViewController.symbolLabelSize = 32
		}
		
	}
	
	func setupNavigationBar() {
		self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
		self.navigationController?.navigationBar.shadowImage = UIImage()
		self.navigationController?.navigationBar.isTranslucent = true
		self.navigationController?.view.backgroundColor = UIColor.clear
		self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		super.prepare(for: segue, sender: sender)
		guard segue.identifier == "goToPhysSectionsFromReference" else { return }
		let navigationVC = segue.destination as! UINavigationController
		let sectionsPhysicsVC = navigationVC.topViewController as! SectionsPhysicsViewController
		sectionsPhysicsVC.sectionsTitle = "????????????????????"
	}
	
	func setupScrollView(){
		scrollView.translatesAutoresizingMaskIntoConstraints = false
		formulasStackView.translatesAutoresizingMaskIntoConstraints = false
		view.addSubview(scrollView)
		
		let g = view.safeAreaLayoutGuide
		
		NSLayoutConstraint.activate([
			
			scrollView.topAnchor.constraint(equalTo: g.topAnchor, constant: 0.0),
			scrollView.leadingAnchor.constraint(equalTo: g.leadingAnchor, constant: 0.0),
			scrollView.trailingAnchor.constraint(equalTo: g.trailingAnchor, constant: 0.0),
			scrollView.bottomAnchor.constraint(equalTo: g.bottomAnchor, constant: 0.0),
		])
		
		scrollView.addSubview(formulasStackView)
		
		let cg = scrollView.contentLayoutGuide
		let fg = scrollView.frameLayoutGuide
		
		NSLayoutConstraint.activate([
			
			formulasStackView.topAnchor.constraint(equalTo: cg.topAnchor, constant: 5.0),
			formulasStackView.leadingAnchor.constraint(equalTo: cg.leadingAnchor, constant: 5.0),
			formulasStackView.trailingAnchor.constraint(equalTo: cg.trailingAnchor, constant: -5.0),
			formulasStackView.bottomAnchor.constraint(equalTo: cg.bottomAnchor, constant: -5.0),
			
			formulasStackView.widthAnchor.constraint(equalTo: fg.widthAnchor, constant: -10.0),
		])
	}
	
	func addFormulaCards() {
		for _ in 0..<FormulasReferenceViewController.formulas.count {
			addFormulaView()
		}
		for view in formulaViews {
			view.formula(superView: view, keyboard: false, formulaIndex: self.formulaIndex)
			formulaIndex += 1
		}
	}
	
	func addFormulaView() {
		let formulaView: FormulaViewCard = {
			let view = FormulaViewCard(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
			view.backgroundColor = #colorLiteral(red: 0.1882152259, green: 0.1882481873, blue: 0.1882079244, alpha: 1)
			view.layer.cornerRadius = 6
			view.translatesAutoresizingMaskIntoConstraints = false
			return view
		}()
		formulasStackView.addArrangedSubview(formulaView)
		formulaViews.append(formulaView)
		
		formulaView.heightAnchor.constraint(equalToConstant: 200).isActive = true
	}
	
	func getFormulasList() {
		
		switch FormulasReferenceViewController.sectionTitle {
		case "????????????????????":
			FormulasReferenceViewController.formulas = Formulas.Kinematics.formulas
			
		case "????????????????":
			FormulasReferenceViewController.formulas = Formulas.Dynamics.formulas
			
		case "??????????????":
			FormulasReferenceViewController.formulas = Formulas.Static.formulas
			
		case "????????????????????????":
			FormulasReferenceViewController.formulas = Formulas.Hydrostatics.formulas
			
		case "????????????, ????????????????, ??????????????":
			FormulasReferenceViewController.formulas = Formulas.WorkPowerEnergy.formulas
			
		case "?????????????????????? ????????????":
			FormulasReferenceViewController.formulas = Formulas.MolecularPhysics.formulas
			
		case "??????????????????????????":
			FormulasReferenceViewController.formulas = Formulas.Thermodynamics.formulas
			
		case "????????????????????????????":
			FormulasReferenceViewController.formulas = Formulas.Electrostatics.formulas
			
		case "???????????? ?????????????????????? ????????":
			FormulasReferenceViewController.formulas = Formulas.LawsDirectCurrent.formulas
			
		case "?????????????????? ????????, ???????????????????????????????? ????????????????":
			FormulasReferenceViewController.formulas = Formulas.MagneticFieldAndElectromagneticInduction.formulas
			
		case "???????????????????????? ?????????????????? ?? ??????????":
			FormulasReferenceViewController.formulas = Formulas.MechanicaVibrationsAndWaves.formulas
			
		case "???????????????????????????????? ?????????????????? ?? ??????????":
			FormulasReferenceViewController.formulas = Formulas.ElectromagneticVibrationsAndWaves.formulas
			
		case "????????????":
			FormulasReferenceViewController.formulas = Formulas.Optics.formulas
			
		case "?????????????????? ????????????":
			FormulasReferenceViewController.formulas = Formulas.QuantumPhysics.formulas
			
		case "???????????????? ????????, ?????????????????? ?? ?????????????? ??????":
			FormulasReferenceViewController.formulas = Formulas.PropertiesSteamLiquidsAndSolids.formulas
			
		default:
			FormulasReferenceViewController.formulas = Formulas.Static.formulas
		}
	}
}
