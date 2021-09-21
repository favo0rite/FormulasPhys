//
//  ViewController.swift
//  FormulasPhys
//
//  Created by Zamotaev Pavel on 07.07.2021.
//

import UIKit

class TestViewController: UIViewController {
	
	lazy var numberAttempts = 3
	
	var numberCorrectAnswers = 0
	
	lazy var sectionTitle = ""
	
	let formulasObject = Formulas()
	
	lazy var formulas: [FormulaCD] = []
	
	lazy var formulasCount = formulasCD.count
	
	lazy var symbolsOnKeyBoard = Formulas.WorkPowerEnergy.symbols
	
	lazy var formulaIndex = Int.random(in: 0..<formulas.count)
	
	let mySpacing: CGFloat = 5.0
	
	let screenSize: CGRect = UIScreen.main.bounds
	
	let widthLabelInFormula = 50
	
	let formulaWithoutFractionStackView = UIStackView()
	
	let numeratorFractionStackView = UIStackView()
	
	let denominatorFractionStackView = UIStackView()
	
	let symbolPhysicalQuantityStackView = UIStackView()
	
	let fractionLineView = UIStackView()
	
	let correctFormulaView = UIView()
	
	var numberSymbolLabel = 0
	
	var symbolLabels: [UILabel] = []
	
	var numeratorFractionLabels: [UILabel] = []
	
	var denominatorFractionLabels: [UILabel] = []
	
	var symbolPhysicalQuantityLabels: [UILabel] = []
	
	var buttonsOnKeayboard: [UIButton] = []
	
	lazy var symbolsInFormulaCount = formulas[formulaIndex].formula.replacingOccurrences(of: "/", with: "").count
	
	lazy var symbolsInFormula = [String](repeating: "", count: symbolsInFormulaCount)
	
	let centerXAnchor: CGFloat = 15
	
	let symbolHeight: CGFloat = 50
	
	let centerYAnchorFormuala: CGFloat = 25
	
	lazy var symbolsCountNumerator = formulas[formulaIndex].formula.components(separatedBy: "/")[0].count - 2
	
	lazy var symbolsCountDenomenator = formulas[formulaIndex].formula.components(separatedBy: "/")[1].count
	
	let backgroundColorView: UIColor = #colorLiteral(red: 0.2587976158, green: 0.2588401437, blue: 0.258788228, alpha: 1)
	
	var formulaViewSize: CGFloat = 160
	
	var symbolLabelSize: CGFloat = 30
	
	var formulaTitleLabelSize: CGFloat = 20
	
	lazy var numberCorrectAnswersLabel: UILabel = {
		let label = UILabel()
		label.backgroundColor = #colorLiteral(red: 0.1882152259, green: 0.1882481873, blue: 0.1882079244, alpha: 1)
		label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
		label.textAlignment = .center
		label.layer.cornerRadius = 6
		label.layer.masksToBounds = true
		label.font = UIFont.systemFont(ofSize: 17)
		label.text = "\(numberCorrectAnswers)/\(formulas.count)"
		label.lineBreakMode = NSLineBreakMode.byWordWrapping
		label.numberOfLines = 0
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	lazy var numberAttemptsLabel: UILabel = {
		let label = UILabel()
		label.backgroundColor = #colorLiteral(red: 0.1882152259, green: 0.1882481873, blue: 0.1882079244, alpha: 1)
		label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
		label.textAlignment = .center
		label.layer.cornerRadius = 6
		label.layer.masksToBounds = true
		label.font = UIFont.systemFont(ofSize: 17)
		label.text = "Попытки: \(numberAttempts)"
		label.lineBreakMode = NSLineBreakMode.byWordWrapping
		label.numberOfLines = 0
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	lazy var numberCorrectAnswersFinishLabel: UILabel = {
		let label = UILabel()
		label.backgroundColor = #colorLiteral(red: 0.1882152259, green: 0.1882481873, blue: 0.1882079244, alpha: 1)
		label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
		label.textAlignment = .center
		label.layer.cornerRadius = 6
		label.layer.masksToBounds = true
		label.font = UIFont.systemFont(ofSize: 21)
		label.text = "finish"
		label.lineBreakMode = NSLineBreakMode.byWordWrapping
		label.numberOfLines = 0
		label.isHidden = true
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	let keyboardStackView: UIStackView = {
		let stackView = UIStackView()
		stackView.axis = .vertical
		stackView.backgroundColor = #colorLiteral(red: 0.2587976158, green: 0.2588401437, blue: 0.258788228, alpha: 1)
		stackView.layer.cornerRadius = 6
		stackView.alignment = .fill
		stackView.distribution = .fillEqually
		stackView.spacing = 5
		return stackView
	}()
	
	let deleteButton: UIButton = {
		let button = UIButton()
		button.backgroundColor = #colorLiteral(red: 0.1882152259, green: 0.1882481873, blue: 0.1882079244, alpha: 1)
		button.layer.cornerRadius = 6
		button.setTitle("<", for: .normal)
		button.addTarget(self, action: #selector(deleteButtonAction), for: .touchUpInside)
		button.translatesAutoresizingMaskIntoConstraints = false
		return button
	}()
	
	let formulaView: UIView = {
		let view = UIView()
		view.backgroundColor = #colorLiteral(red: 0.1882152259, green: 0.1882481873, blue: 0.1882079244, alpha: 1)
		view.layer.cornerRadius = 6
		view.translatesAutoresizingMaskIntoConstraints = false
		return view
	}()
	
	let doneButton: UIButton = {
		let button = UIButton()
		button.backgroundColor = #colorLiteral(red: 0.1882152259, green: 0.1882481873, blue: 0.1882079244, alpha: 1)
		button.layer.cornerRadius = 6
		button.setTitle("Done", for: .normal)
		button.addTarget(self, action: #selector(doneButtonAction), for: .touchUpInside)
		button.translatesAutoresizingMaskIntoConstraints = false
		return button
	}()
	
	let okButton: UIButton = {
		let button = UIButton()
		button.backgroundColor = #colorLiteral(red: 0.1882152259, green: 0.1882481873, blue: 0.1882079244, alpha: 1)
		button.layer.cornerRadius = 6
		button.setTitle("ОК", for: .normal)
		button.titleLabel?.font = UIFont.systemFont(ofSize: 25)
		button.addTarget(self, action: #selector(okButtonAction), for: .touchUpInside)
		button.isHidden = true
		button.translatesAutoresizingMaskIntoConstraints = false
		return button
	}()
	
	lazy var formulaTitleLabel: UILabel = {
		let label = UILabel()
		label.backgroundColor = #colorLiteral(red: 0.1882152259, green: 0.1882481873, blue: 0.1882079244, alpha: 1)
		label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
		label.textAlignment = .center
		label.layer.cornerRadius = 6
		label.layer.masksToBounds = true
		label.font = UIFont.systemFont(ofSize: formulaTitleLabelSize)
		label.text = "Закон Ньютона"
		label.lineBreakMode = NSLineBreakMode.byWordWrapping
		label.frame.size = label.intrinsicContentSize
		label.numberOfLines = 0
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	lazy var doneFormulaLabel: UILabel = {
		let label = UILabel()
		label.backgroundColor = #colorLiteral(red: 0.1882152259, green: 0.1882481873, blue: 0.1882079244, alpha: 1)
		label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
		label.textAlignment = .center
		label.font = UIFont.systemFont(ofSize: formulaTitleLabelSize)
		label.text = "Правильная формула"
		label.lineBreakMode = NSLineBreakMode.byWordWrapping
		label.frame.size = label.intrinsicContentSize
		label.numberOfLines = 0
		label.isHidden = true
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		setupUISize()
		view.backgroundColor = backgroundColorView
		setupNavigationBar()
		self.title = sectionTitle
		setFormulasValue()
		showInterface()
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		super.prepare(for: segue, sender: sender)
		guard segue.identifier == "goToPhysSectionsFromTest" else { return }
		let navigationVC = segue.destination as! UINavigationController
		let sectionsPhysicsVC = navigationVC.topViewController as! SectionsPhysicsViewController
		sectionsPhysicsVC.sectionsTitle = "Тест"
	}
	
	func showInterface() {
		if formulas.isEmpty {
			presentAlertController()
		} else {
			formulasCount = formulas.count
			setupKeyboard(rows: 4, columns: 4, rootView: view)
			addFormulaView()
			addSymbolsOnKeyBoard()
			doneButtonConstraints()
			deleteButtonConstraints()
			formula(superView: formulaView, keyboard: true, centerYAnchor: centerYAnchorFormuala, formulaIndex: formulaIndex)
			setupNumberCorrectAnswersLabel()
			setupFormulaTitleLabel()
			addDoneFormulaLabel()
			setupNumberAttemptsLabel()
			addOkButton()
			setupNumberCorrectAnswersFinishLabel()
		}
	}
	
	func setFormulasValue() {
		let formulasInReference = getFormulasList()
		for formula in formulasInReference {
			for formulaBD in formulasCD {
				if formula.title == formulaBD.title {
					formulas.append(formulaBD)
				}
			}
		}
	}
	
	func addSymbol(newSymbol: String) {
		if symbolLabels[numberSymbolLabel].text == "=" {
			numberSymbolLabel += 1
		}
		if symbolLabels[numberSymbolLabel].text == "?" {
			symbolLabels[numberSymbolLabel].text = newSymbol
			if numberSymbolLabel < symbolLabels.count-1 {
				numberSymbolLabel += 1
			}
		}
	}
	
	func deleteSymbol() {
		if numberSymbolLabel == symbolLabels.count - 1 {
			if symbolLabels[numberSymbolLabel].text == "?" {
				numberSymbolLabel -= 1
			}
		} else {
			if numberSymbolLabel > 0 {
				numberSymbolLabel -= 1
			}
		}
		if symbolLabels[numberSymbolLabel].text == "=" {
			numberSymbolLabel -= 1
		}
		if symbolLabels[numberSymbolLabel].text != "?" {
			symbolLabels[numberSymbolLabel].text = "?"
		}
	}
	
	func setupNavigationBar() {
		self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
		self.navigationController?.navigationBar.shadowImage = UIImage()
		self.navigationController?.navigationBar.isTranslucent = true
		self.navigationController?.view.backgroundColor = UIColor.clear
		self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
	}
	
	@objc func buttonOnKeyboardAction(button: UIButton){
		let symbol = button.currentTitle ?? ""
		let formula = formulas[formulaIndex].formula
		let formulaSymbols = Array(formula)
		
		if formulaSymbols[1] == "²" || formulaSymbols[1] == "ₚ" || formulaSymbols[1] == "ₖ" || formulaSymbols[1] == "₀" || formulaSymbols[1] == "λ" || formulaSymbols[1] == "ν" {
			if symbolsInFormula.last == "" {
				if numberSymbolLabel == 2 {
					symbolsInFormula[numberSymbolLabel + 1] = symbol
				} else {
					symbolsInFormula[numberSymbolLabel] = symbol
				}
			}
		} else {
			if symbolsInFormula.last == "" {
				if numberSymbolLabel == 1 {
					symbolsInFormula[numberSymbolLabel + 1] = symbol
				} else {
					symbolsInFormula[numberSymbolLabel] = symbol
				}
			}
		}
		
		addSymbol(newSymbol: symbol)
	}
	
	@objc func deleteButtonAction(button: UIButton) {
		deleteSymbol()
		symbolsInFormula[numberSymbolLabel] = ""
	}
	
	@objc func doneButtonAction(button: UIButton) {
		compareFormulas()
	}
	
	@objc func okButtonAction() {
		if formulas.count == 1 {
			showFinishResult()
		} else {
			deleteFormula()
			formulas.remove(at: formulaIndex)
			formulaIndex = Int.random(in: 0..<formulas.count)
			formula(superView: formulaView, keyboard: true, centerYAnchor: centerYAnchorFormuala, formulaIndex: formulaIndex)
			clearSymbolsArray()
			doneButton.isHidden = false
			deleteButton.isHidden = false
			keyboardStackView.isHidden = false
			okButton.isHidden = true
			doneFormulaLabel.isHidden = true
			numberAttempts = 3
			numberAttemptsLabel.text = "Попытки: \(numberAttempts)"
			numberAttemptsLabel.isHidden = false
			addSymbolsOnKeyBoard()
		}
	}
	
	func formula(superView: UIView, keyboard: Bool, centerYAnchor: CGFloat = 0, formulaIndex: Int) {
		if formulas[formulaIndex].formula.contains("/") {
			setupDenominatorFraction(superView: superView, keyboard: keyboard, centerYAnchor: centerYAnchor)
			setupNumeratorFraction(superView: superView)
			DispatchQueue.main.async { [self] in
				setupFractionLine(superView: superView)
				setupSymbolPhysicalQuantity(superView: superView)
			}
			DispatchQueue.main.async { [self] in
				symbolLabels = symbolPhysicalQuantityLabels + numeratorFractionLabels + denominatorFractionLabels
			}
		} else {
			setupFormulaWithoutFraction(superView: superView, formulaIndex: formulaIndex)
		}
		DispatchQueue.main.async { [self] in
			let formula = formulas[formulaIndex].formula
			let formulaSymbols = Array(formula)
			
			if formulaSymbols[1] == "²" || formulaSymbols[1] == "ₚ" || formulaSymbols[1] == "ₖ" || formulaSymbols[1] == "₀" || formulaSymbols[1] == "λ" || formulaSymbols[1] == "ν" {
				symbolLabels[2].text = "="
				symbolsInFormula[2] = "="
			} else {
				symbolLabels[1].text = "="
				symbolsInFormula[1] = "="
			}
			formulaTitleLabel.text = formulas[formulaIndex].title
		}
	}
	
	func showFinishResult() {
		deleteAllnterface()
		numberCorrectAnswersFinishLabel.isHidden = false
		numberCorrectAnswersFinishLabel.text = "Правильные ответы: \(numberCorrectAnswers)/\(formulasCount)"
	}
	
	func deleteAllnterface() {
		deleteFormula()
		formulaTitleLabel.isHidden = true
		keyboardStackView.isHidden = true
		doneButton.isHidden = true
		deleteButton.isHidden = true
		numberAttemptsLabel.isHidden = true
		formulaView.isHidden = true
		okButton.isHidden = true
	}
	
	func deleteAllViewsInSuperView(view: UIView) {
		view.subviews.forEach {
			$0.removeFromSuperview()
		}
	}
	
	func getFormulasList() -> [Formula] {
		
		switch sectionTitle {
		case "Кинематика":
			symbolsOnKeyBoard = Formulas.Kinematics.symbols
			return Formulas.Kinematics.formulas
			
		case "Динамика":
			symbolsOnKeyBoard = Formulas.Dynamics.symbols
			return Formulas.Dynamics.formulas
			
		case "Статика":
			symbolsOnKeyBoard = Formulas.Static.symbols
			return Formulas.Static.formulas
			
		case "Гидростатика":
			symbolsOnKeyBoard = Formulas.Hydrostatics.symbols
			return Formulas.Hydrostatics.formulas
			
		case "Работа, мощность, энергия":
			symbolsOnKeyBoard = Formulas.WorkPowerEnergy.symbols
			return Formulas.WorkPowerEnergy.formulas
			
		case "Молекуляная Физика":
			symbolsOnKeyBoard = Formulas.MolecularPhysics.symbols
			return  Formulas.MolecularPhysics.formulas
			
		case "Термодинамика":
			symbolsOnKeyBoard = Formulas.Thermodynamics.symbols
			return Formulas.Thermodynamics.formulas
			
			
		case "Электростатика":
			symbolsOnKeyBoard = Formulas.Electrostatics.symbols
			return Formulas.Electrostatics.formulas
			
			
		case "Законы постоянного тока":
			symbolsOnKeyBoard = Formulas.LawsDirectCurrent.symbols
			return Formulas.LawsDirectCurrent.formulas
			
			
		case "Магнитное поле, электромагнитная индукция":
			symbolsOnKeyBoard = Formulas.MagneticFieldAndElectromagneticInduction.symbols
			return Formulas.MagneticFieldAndElectromagneticInduction.formulas
			
			
		case "Механические колебания и волны":
			symbolsOnKeyBoard = Formulas.MechanicaVibrationsAndWaves.symbols
			return Formulas.MechanicaVibrationsAndWaves.formulas
			
			
		case "Электромагнитные колебания и волны":
			symbolsOnKeyBoard = Formulas.ElectromagneticVibrationsAndWaves.symbols
			return Formulas.ElectromagneticVibrationsAndWaves.formulas
			
			
		case "Оптика":
			symbolsOnKeyBoard = Formulas.Optics.symbols
			return Formulas.Optics.formulas
			
			
		case "Квантовая физика":
			symbolsOnKeyBoard = Formulas.QuantumPhysics.symbols
			return Formulas.QuantumPhysics.formulas
			
			
		case "Свойства пара, жидкостей и твердых тел":
			symbolsOnKeyBoard = Formulas.PropertiesSteamLiquidsAndSolids.symbols
			return Formulas.PropertiesSteamLiquidsAndSolids.formulas
			
		default:
			return Formulas.allFormulas
		}
	}
	
	// MARK: CONSTRAINTS
	func setupKeyboard(rows: Int, columns: Int, rootView: UIView) {
		
		for _ in 0 ..< rows {
			let horizontalSv = UIStackView()
			horizontalSv.axis = .horizontal
			horizontalSv.alignment = .fill
			horizontalSv.distribution = .fillEqually
			horizontalSv.spacing = mySpacing
			
			for _ in 0 ..< columns {
				let button = UIButton()
				button.backgroundColor = #colorLiteral(red: 0.1882152259, green: 0.1882481873, blue: 0.1882079244, alpha: 1)
				button.layer.cornerRadius = 6
				button.setTitle("", for: .normal)
				button.addTarget(self, action: #selector(buttonOnKeyboardAction), for: .touchUpInside)
				button.titleLabel?.font = UIFont(name: "GFSDidot-Regular", size: 27)
				horizontalSv.addArrangedSubview(button)
				buttonsOnKeayboard.append(button)
			}
			keyboardStackView.addArrangedSubview(horizontalSv)
		}
		
		rootView.addSubview(keyboardStackView)
		
		keyboardStackView.translatesAutoresizingMaskIntoConstraints = false
		keyboardStackView.heightAnchor.constraint(equalToConstant: (screenSize.height * 0.7) / 2).isActive = true
		keyboardStackView.leftAnchor.constraint(equalTo: rootView.leftAnchor, constant: mySpacing).isActive = true
		keyboardStackView.rightAnchor.constraint(equalTo: rootView.rightAnchor, constant: -mySpacing).isActive = true
		keyboardStackView.bottomAnchor.constraint(equalTo: rootView.safeAreaLayoutGuide.bottomAnchor, constant: -mySpacing).isActive = true
	}
	
	func setupFormulaTitleLabel() {
		view.addSubview(formulaTitleLabel)
		
		formulaTitleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -mySpacing).isActive = true
		formulaTitleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: mySpacing).isActive = true
		formulaTitleLabel.topAnchor.constraint(equalTo: numberCorrectAnswersLabel.bottomAnchor, constant: 5).isActive = true
	}
	
	func setupFractionLine(superView: UIView) {
		addFractionLine(superView: superView)
		let labelsCount = symbolsCountNumerator > symbolsCountDenomenator ? symbolsCountNumerator : symbolsCountDenomenator
		for _  in 0 ..< labelsCount {
			let view = UIView()
			view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
			view.widthAnchor.constraint(equalToConstant: 22).isActive = true
			view.translatesAutoresizingMaskIntoConstraints = false
			fractionLineView.addArrangedSubview(view)
		}
	}
	
	func setupUISize() {
		if screenSize.width < 321 {
			formulaViewSize = 100
			formulaTitleLabelSize = 16
			symbolLabelSize = 26
		}
		
		if screenSize.width > 413 {
			formulaTitleLabelSize = 22
			symbolLabelSize = 33
		}
		
	}
	
	func setupNumeratorFraction(superView: UIView) {
		addNumeratorFractionStackView(numeratorStackView: numeratorFractionStackView, superView: superView)
		var numberSymbols = 2
		let formula = formulas[formulaIndex].formula
		let formulaSymbols = Array(formula)
		if formulaSymbols[1] == "²" || formulaSymbols[1] == "ₚ" || formulaSymbols[1] == "ₖ" || formulaSymbols[1] == "₀" || formulaSymbols[1] == "λ" || formulaSymbols[1] == "ν" {
			numberSymbols += 1
		}
		if formula.contains("const") {
			numberSymbols += 4
		}
		symbolsCountNumerator = formulas[formulaIndex].formula.components(separatedBy: "/")[0].count - numberSymbols
		for _ in 0 ..< symbolsCountNumerator {
			addSymbolLabel(formulaStackView: numeratorFractionStackView, symbolLabels: &numeratorFractionLabels)
		}
	}
	
	func setupDenominatorFraction(superView: UIView, keyboard: Bool, centerYAnchor: CGFloat = 0) {
		addDenominatorFractionStackView(denominatorStackView: denominatorFractionStackView, superView: superView, keyboard: keyboard, centerYAnchor: centerYAnchor)
		symbolsCountDenomenator = formulas[formulaIndex].formula.components(separatedBy: "/")[1].count
		for _ in 0 ..< symbolsCountDenomenator {
			addSymbolLabel(formulaStackView: denominatorFractionStackView, symbolLabels: &denominatorFractionLabels)
		}
	}
	
	func setupSymbolPhysicalQuantity(superView: UIView) {
		addSymbolPhysicalQuantity(formulaStackView: symbolPhysicalQuantityStackView, superView: superView)
		var numberSymbols = 2
		let formula = formulas[formulaIndex].formula
		let formulaSymbols = Array(formula)
		
		if formulaSymbols[1] == "²" || formulaSymbols[1] == "ₚ" || formulaSymbols[1] == "ₖ" || formulaSymbols[1] == "₀" || formulaSymbols[1] == "λ" || formulaSymbols[1] == "ν" || formulaSymbols[1] == "ν" {
			numberSymbols += 1
		}
		for _ in 0 ..< numberSymbols {
			addSymbolLabel(formulaStackView: symbolPhysicalQuantityStackView, symbolLabels: &symbolPhysicalQuantityLabels)
		}
	}
	
	func setupFormulaWithoutFraction(superView: UIView, formulaIndex: Int) {
		setupFormulaWithoutFraction(formulaStackView: formulaWithoutFractionStackView, superView: superView)
		var symbolsCount = formulas[formulaIndex].formula.count
		if formulas[formulaIndex].formula.contains("cosα") || formulas[formulaIndex].formula.contains("sinφ") || formulas[formulaIndex].formula.contains("sinα") {
			symbolsCount -= 3
		} else if formulas[formulaIndex].formula.contains("const") {
			symbolsCount -= 4
		}
		for _ in 0 ..< symbolsCount {
			addSymbolLabel(formulaStackView: formulaWithoutFractionStackView, symbolLabels: &symbolLabels)
		}
	}
	
	func setupFormulaWithoutFraction(formulaStackView: UIStackView, superView: UIView) {
		formulaStackView.axis = .horizontal
		formulaStackView.alignment = .fill
		formulaStackView.spacing = 0
		formulaStackView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
		
		superView.addSubview(formulaStackView)
		
		// add constraints
		formulaStackView.translatesAutoresizingMaskIntoConstraints = false
		formulaStackView.centerYAnchor.constraint(equalTo: superView.centerYAnchor, constant: 0).isActive = true
		
		formulaStackView.centerXAnchor.constraint(equalTo: superView.centerXAnchor).isActive = true
	}
	
	func addNumeratorFractionStackView(numeratorStackView: UIStackView, superView: UIView) {
		
		superView.addSubview(numeratorStackView)
		
		// add constraints
		numeratorStackView.translatesAutoresizingMaskIntoConstraints = false
		numeratorStackView.bottomAnchor.constraint(equalTo: denominatorFractionStackView.topAnchor).isActive = true
		
		numeratorStackView.centerXAnchor.constraint(equalTo: denominatorFractionStackView.centerXAnchor).isActive = true
	}
	
	func addDenominatorFractionStackView(denominatorStackView: UIStackView, superView: UIView, keyboard: Bool, centerYAnchor: CGFloat = 0) {
		denominatorStackView.axis = .horizontal
		denominatorStackView.alignment = .fill
		denominatorStackView.spacing = 0
		denominatorStackView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
		
		superView.addSubview(denominatorStackView)
		
		// add constraints
		denominatorStackView.translatesAutoresizingMaskIntoConstraints = false
		
		denominatorStackView.centerXAnchor.constraint(equalTo: superView.centerXAnchor, constant: centerXAnchor).isActive = true
		denominatorStackView.centerYAnchor.constraint(equalTo: superView.centerYAnchor, constant: 25).isActive = true
	}
	
	func addSymbolPhysicalQuantity(formulaStackView: UIStackView, superView: UIView) {
		formulaStackView.axis = .horizontal
		formulaStackView.alignment = .fill
		formulaStackView.spacing = 0
		formulaStackView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
		
		superView.addSubview(formulaStackView)
		
		// add constraints
		formulaStackView.translatesAutoresizingMaskIntoConstraints = false
		formulaStackView.trailingAnchor.constraint(equalTo: fractionLineView.leadingAnchor).isActive = true
		
		formulaStackView.centerYAnchor.constraint(equalTo: fractionLineView.centerYAnchor).isActive = true
	}
	
	func addSymbolLabel(formulaStackView: UIStackView, symbolLabels: inout [UILabel]) {
		let symbolLabel = UILabel()
		symbolLabel.backgroundColor = #colorLiteral(red: 0.1882152259, green: 0.1882481873, blue: 0.1882079244, alpha: 1)
		symbolLabel.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
		symbolLabel.textAlignment = .center
		symbolLabel.font = UIFont(name: "GFSDidot-Regular", size: symbolLabelSize)
		symbolLabel.text = "?"
		symbolLabel.frame.size = symbolLabel.intrinsicContentSize
		
		// add constraints
		symbolLabel.translatesAutoresizingMaskIntoConstraints = false
		symbolLabels.append(symbolLabel)
		formulaStackView.addArrangedSubview(symbolLabel)
	}
	
	func deleteFormula() {
		if formulas[formulaIndex].formula.contains("/") {
			deleteAllViewsInSuperView(view: numeratorFractionStackView)
			deleteAllViewsInSuperView(view: denominatorFractionStackView)
			deleteAllViewsInSuperView(view: symbolPhysicalQuantityStackView)
			deleteAllViewsInSuperView(view: fractionLineView)
			numeratorFractionStackView.removeFromSuperview()
			denominatorFractionStackView.removeFromSuperview()
			symbolPhysicalQuantityStackView.removeFromSuperview()
			fractionLineView.removeFromSuperview()
			symbolLabels.removeAll()
			denominatorFractionLabels.removeAll()
			numeratorFractionLabels.removeAll()
			symbolPhysicalQuantityLabels.removeAll()
			numberSymbolLabel = 0
		} else {
			deleteAllViewsInSuperView(view: formulaWithoutFractionStackView)
			formulaWithoutFractionStackView.removeFromSuperview()
			symbolLabels.removeAll()
			numberSymbolLabel = 0
		}
	}
	
	func compareFormulas() {
		let formula = symbolsInFormula.joined()
		if formula == formulas[formulaIndex].formula.replacingOccurrences(of: "/", with: "") {
			numberCorrectAnswers += 1
			numberAttempts = 3
			numberAttemptsLabel.text = "Попытки: \(numberAttempts)"
			numberCorrectAnswersLabel.text = "\(numberCorrectAnswers)/\(formulasCount)"
			if formulas.count != 1 {
				deleteFormula()
				formulas.remove(at: formulaIndex)
				formulaIndex = Int.random(in: 0..<formulas.count)
				clearSymbolsArray()
				
				self.formula(superView: formulaView, keyboard: true, centerYAnchor: centerYAnchorFormuala, formulaIndex: formulaIndex)
				addSymbolsOnKeyBoard()
				print(true)
			} else {
				showFinishResult()
			}
		} else {
			if numberAttempts > 1 {
				numberAttempts -= 1
				numberAttemptsLabel.text = "Попытки: \(numberAttempts)"
			} else {
				showCorrectFormula()
				doneButton.isHidden = true
				deleteButton.isHidden = true
				keyboardStackView.isHidden = true
				okButton.isHidden = false
				doneFormulaLabel.isHidden = false
				numberAttemptsLabel.isHidden = true
			}
		}
	}
	
	func deleteButtonConstraints() {
		view.addSubview(deleteButton)
		
		deleteButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -mySpacing).isActive = true
		deleteButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
		deleteButton.widthAnchor.constraint(equalToConstant: 50).isActive = true
		deleteButton.bottomAnchor.constraint(equalTo: keyboardStackView.topAnchor, constant: -mySpacing).isActive = true
	}
	
	func doneButtonConstraints() {
		view.addSubview(doneButton)
		
		doneButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: mySpacing).isActive = true
		doneButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
		doneButton.widthAnchor.constraint(equalToConstant: 50).isActive = true
		doneButton.bottomAnchor.constraint(equalTo: keyboardStackView.topAnchor, constant: -mySpacing).isActive = true
	}
	
	func addFractionLine(superView: UIView) {
		
		superView.addSubview(fractionLineView)
		fractionLineView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
		fractionLineView.topAnchor.constraint(equalTo: numeratorFractionStackView.bottomAnchor).isActive = true
		fractionLineView.heightAnchor.constraint(equalToConstant: 3).isActive = true
		fractionLineView.centerXAnchor.constraint(equalTo: numeratorFractionStackView.centerXAnchor).isActive = true
		fractionLineView.translatesAutoresizingMaskIntoConstraints = false
	}
	
	func addOkButton() {
		view.addSubview(okButton)
		okButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive = true
		okButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
		okButton.widthAnchor.constraint(equalToConstant: 70).isActive = true
		okButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
		okButton.translatesAutoresizingMaskIntoConstraints = false
	}
	
	func addDoneFormulaLabel() {
		formulaView.addSubview(doneFormulaLabel)
		doneFormulaLabel.topAnchor.constraint(equalTo: formulaView.topAnchor, constant: 5).isActive = true
		doneFormulaLabel.centerXAnchor.constraint(equalTo: formulaView.centerXAnchor).isActive = true
		doneFormulaLabel.translatesAutoresizingMaskIntoConstraints = false
	}
	
	func clearSymbolsArray() {
		symbolsInFormulaCount = formulas[formulaIndex].formula.replacingOccurrences(of: "/", with: "").count
		let newSymbolsInFormula = [String](repeating: "", count: symbolsInFormulaCount)
		symbolsInFormula = newSymbolsInFormula
	}
	
	func showCorrectFormula() {
		let formula = formulas[formulaIndex].formula
		print(formula)
		let newFormula = formula.replacingOccurrences(of: "/", with: "").replacingOccurrences(of: "cosα", with: " ").replacingOccurrences(of: "const", with: " ").replacingOccurrences(of: "sinα", with: " ")
		print(newFormula)
		let formulaSymbols = Array(newFormula)
		if formula.contains("cosα") || formula.contains("sinα") || formula.contains("sinφ") {
			for index in 0..<formulaSymbols.count {
				symbolLabels[index].text = String(formulaSymbols[index])
			}
			symbolLabels.last?.text = getLongSymbol(formula: formula)
		} else if formula.contains("const") {
			for index in 0..<formulaSymbols.count {
				symbolLabels[index].text = String(formulaSymbols[index])
			}
			symbolLabels.first?.text = getLongSymbol(formula: formula)
		} else {
			for index in 0..<formulaSymbols.count {
				symbolLabels[index].text = String(formulaSymbols[index])
			}
		}
	}
	
	func getLongSymbol(formula: String) -> String {
		var longSymbol = ""
		if formula.contains("cosα") {
			longSymbol = "cosα"
		} else if formula.contains("sinα") {
			longSymbol = "sinα"
		} else if formula.contains("sinφ"){
			longSymbol = "sinφ"
		} else {
			longSymbol = "const"
		}
		return longSymbol
	}
	
	func addSymbolsOnKeyBoard() {
		let formula = formulas[formulaIndex].formula.replacingOccurrences(of: "/", with: "").replacingOccurrences(of: "=", with: "").replacingOccurrences(of: "cosα", with: "").replacingOccurrences(of: "const", with: "").replacingOccurrences(of: "sinα", with: "")
		let formulaSymbols = Array(formula)
		var symbols = [String](repeating: "", count: 16)
		for index in 0..<formulaSymbols.count {
			symbols[index] = String(formulaSymbols[index])
		}
		
		for index in formulaSymbols.count..<16 {
			symbols[index] = symbolsOnKeyBoard[index]
		}
		symbols.shuffle()
		for index in 0..<symbols.count {
			buttonsOnKeayboard[index].setTitle(symbols[index], for: .normal)
		}
	}
	
	func addFormulaView() {
		view.addSubview(formulaView)
		formulaView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
		formulaView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -70).isActive = true
		formulaView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: mySpacing).isActive = true
		formulaView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -mySpacing).isActive = true
		formulaView.heightAnchor.constraint(equalToConstant: formulaViewSize).isActive = true
	}
	
	func setupNumberCorrectAnswersLabel() {
		view.addSubview(numberCorrectAnswersLabel)
		numberCorrectAnswersLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: mySpacing).isActive = true
		numberCorrectAnswersLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: mySpacing).isActive = true
		numberCorrectAnswersLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
		numberCorrectAnswersLabel.widthAnchor.constraint(equalToConstant: 60).isActive = true
	}
	
	func setupNumberAttemptsLabel() {
		view.addSubview(numberAttemptsLabel)
		numberAttemptsLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
		numberAttemptsLabel.bottomAnchor.constraint(equalTo: keyboardStackView.topAnchor, constant: -10).isActive = true
		numberAttemptsLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
		numberAttemptsLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
	}
	
	func setupNumberCorrectAnswersFinishLabel() {
		view.addSubview(numberCorrectAnswersFinishLabel)
		numberCorrectAnswersFinishLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
		numberCorrectAnswersFinishLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
		numberCorrectAnswersFinishLabel.heightAnchor.constraint(equalToConstant: 100).isActive = true
		numberCorrectAnswersFinishLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: mySpacing).isActive = true
		numberCorrectAnswersFinishLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -mySpacing).isActive = true
	}
}
