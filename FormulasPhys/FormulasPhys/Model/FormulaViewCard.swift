//
//  FormulaView.swift
//  FormulasPhys
//
//  Created by out-zamotaev-pk on 05.08.2021.
//

import UIKit

class FormulaViewCard: UIView {

    lazy var symbolsOnKeyBoard = Formulas.Kinematics.symbols

    lazy var formulaIndex = 0
    
    let mySpacing: CGFloat = 5.0

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

    lazy var symbolsInFormulaCount = FormulasReferenceViewController.formulas[formulaIndex].formula.replacingOccurrences(of: "/", with: "").count

    lazy var symbolsInFormula = [String](repeating: "", count: symbolsInFormulaCount)

    let centerXFormulaAnchor: CGFloat = 15

    let symbolHeight: CGFloat = 50

    let centerYAnchorFormuala: CGFloat = 25

    lazy var symbolsCountNumerator = FormulasReferenceViewController.formulas[formulaIndex].formula.components(separatedBy: "/")[0].count - 2

    lazy var symbolsCountDenomenator = FormulasReferenceViewController.formulas[formulaIndex].formula.components(separatedBy: "/")[1].count

    let backgroundColorView: UIColor = #colorLiteral(red: 0.2587976158, green: 0.2588401437, blue: 0.258788228, alpha: 1)

	let imageEmptyStar = UIImage(named: "emptyStar")?.withRenderingMode(.alwaysOriginal)

	let imageHighlightedStar = UIImage(named: "highlightedStar")?.withRenderingMode(.alwaysOriginal)

    lazy var formulaTitleLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = #colorLiteral(red: 0.1882152259, green: 0.1882481873, blue: 0.1882079244, alpha: 1)
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.textAlignment = .center
        label.layer.cornerRadius = 6
        label.layer.masksToBounds = true
		label.font = UIFont.systemFont(ofSize: FormulasReferenceViewController.formulaTitleLabelSize)
        label.text = "Закон Ньютона"
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

	lazy var starButton: UIButton = {
		let button = UIButton()
		button.backgroundColor = #colorLiteral(red: 0.1882152259, green: 0.1882481873, blue: 0.1882079244, alpha: 1)
		button.layer.cornerRadius = 6
		button.layer.masksToBounds = true
		button.addTarget(self, action: #selector(starButtonAction), for: .touchUpInside)
		button.setImage(imageEmptyStar, for: .normal)
		button.translatesAutoresizingMaskIntoConstraints = false
		return button
	}()

    override init(frame: CGRect) {
      super.init(frame: frame)
        addFormulaTitleLabel()
		addStarButton()
    }

	func addStarButton() {
		self.addSubview(starButton)
	
		starButton.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
		starButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5).isActive = true
		starButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
		starButton.widthAnchor.constraint(equalToConstant: 30).isActive = true
	}

	func setImageFavourite(formulaIndex: Int) {
		var image = UIImage(named: "emptyStar")?.withRenderingMode(.alwaysOriginal)
		let formulaTitle = FormulasReferenceViewController.formulas[formulaIndex].title
		for formula in formulasCD {
			if formula.title == formulaTitle {
				image = UIImage(named: "highlightedStar")?.withRenderingMode(.alwaysOriginal)
			}
		}
		starButton.setImage(image, for: .normal)
	}

	func setAddOrDeleteButtonValue(formulaIndex: Int) {
		var image = UIImage(named: "emptyStar")?.withRenderingMode(.alwaysOriginal)
		let formulaTitle = FormulasReferenceViewController.formulas[formulaIndex].title
		for formula in formulasCD {
			if formula.title == formulaTitle {
				image = UIImage(named: "highlightedStar")?.withRenderingMode(.alwaysOriginal)
			}
		}
		starButton.setImage(image, for: .normal)
	}

	@objc func starButtonAction(button: UIButton) {
		guard let formulaTitle = self.formulaTitleLabel.text else { return }
		if button.currentImage == UIImage(named: "emptyStar")?.withRenderingMode(.alwaysOriginal) {
			button.setImage(UIImage(named: "highlightedStar")?.withRenderingMode(.alwaysOriginal), for: .normal)
			FormulaCD.addFormulaInFormulasCD(title: formulaTitle)
		} else {
			button.setImage(UIImage(named: "emptyStar")?.withRenderingMode(.alwaysOriginal), for: .normal)
			FormulaCD.deleteFromFormulasCD(tittle: formulaTitle)
		}
	}

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func addFormulaTitleLabel() {
        self.addSubview(formulaTitleLabel)
        
        formulaTitleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -mySpacing).isActive = true
        formulaTitleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: mySpacing).isActive = true
        formulaTitleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: mySpacing).isActive = true
    }

    func formula(superView: FormulaViewCard, keyboard: Bool, centerYAnchor: CGFloat = 0, formulaIndex: Int) {
        if FormulasReferenceViewController.formulas[formulaIndex].formula.contains("/") {
            denominatorFraction(superView: superView, keyboard: keyboard, centerYAnchor: centerYAnchor, formulaIndex: formulaIndex)
            numeratorFraction(superView: superView, formulaIndex: formulaIndex)
            DispatchQueue.main.async { [self] in
                fractionLine(superView: superView)
                symbolPhysicalQuantity(superView: superView, formulaIndex: formulaIndex)
            }
            DispatchQueue.main.async { [self] in
                symbolLabels = symbolPhysicalQuantityLabels + numeratorFractionLabels + denominatorFractionLabels
            }
        } else {
            formulaWithoutFraction(superView: superView, formulaIndex: formulaIndex)
        }
        DispatchQueue.main.async { [self] in
            correctFormula(formulaIndex: formulaIndex)
            formulaTitleLabel.text = FormulasReferenceViewController.formulas[formulaIndex].title
			setImageFavourite(formulaIndex: formulaIndex)
        }
    }

	func correctFormula(formulaIndex: Int) {
		let formula = FormulasReferenceViewController.formulas[formulaIndex].formula.replacingOccurrences(of: "/", with: "")
		let formulaSymbols = Array(formula)
		for index in 0..<formulaSymbols.count {
			symbolLabels[index].text = String(formulaSymbols[index])
			if symbolLabels[index].text == "=" {
				symbolLabels[index].text = " = "
			}
		}
	}

    func fractionLine(superView: UIView) {
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

    func numeratorFraction(superView: UIView, formulaIndex: Int) {
        addNumeratorFractionStackView(numeratorStackView: numeratorFractionStackView, superView: superView)
        var numberSymbols = 2
        let formula = FormulasReferenceViewController.formulas[formulaIndex].formula
        let formulaSymbols = Array(formula)
        if formula.contains("const") {
            numberSymbols += 4
        }
        if formulaSymbols[1] == "²" || formulaSymbols[1] == "ₚ" || formulaSymbols[1] == "ₖ" || formulaSymbols[1] == "₀" {
            numberSymbols += 1
        }
        symbolsCountNumerator = FormulasReferenceViewController.formulas[formulaIndex].formula.components(separatedBy: "/")[0].count - numberSymbols
        for _ in 0 ..< symbolsCountNumerator {
            addSymbolLabel(formulaStackView: numeratorFractionStackView, symbolLabels: &numeratorFractionLabels)
        }
    }

    func denominatorFraction(superView: UIView, keyboard: Bool, centerYAnchor: CGFloat = 0, formulaIndex: Int) {
        addDenominatorFractionStackView(denominatorStackView: denominatorFractionStackView, superView: superView, keyboard: keyboard, centerYAnchor: centerYAnchor)
        symbolsCountDenomenator = FormulasReferenceViewController.formulas[formulaIndex].formula.components(separatedBy: "/")[1].count
        for _ in 0 ..< symbolsCountDenomenator {
            addSymbolLabel(formulaStackView: denominatorFractionStackView, symbolLabels: &denominatorFractionLabels)
        }
    }

    func symbolPhysicalQuantity(superView: UIView, formulaIndex: Int) {
        addSymbolPhysicalQuantity(formulaStackView: symbolPhysicalQuantityStackView, superView: superView)
        var numberSymbols = 2
        let formula = FormulasReferenceViewController.formulas[formulaIndex].formula
        let formulaSymbols = Array(formula)

        if formulaSymbols[1] == "²" || formulaSymbols[1] == "ₚ" || formulaSymbols[1] == "ₖ" || formulaSymbols[1] == "₀" {
            numberSymbols += 1
        }
        if formula.contains("const") {
            numberSymbols += 4
        }
        for _ in 0 ..< numberSymbols {
            addSymbolLabel(formulaStackView: symbolPhysicalQuantityStackView, symbolLabels: &symbolPhysicalQuantityLabels)
        }
    }

    func formulaWithoutFraction(superView: UIView, formulaIndex: Int) {
        addFormulaWithoutFraction(formulaStackView: formulaWithoutFractionStackView, superView: superView)
        for _ in 0 ..< FormulasReferenceViewController.formulas[formulaIndex].formula.count {
            addSymbolLabel(formulaStackView: formulaWithoutFractionStackView, symbolLabels: &symbolLabels)
        }
    }

    func addFormulaWithoutFraction(formulaStackView: UIStackView, superView: UIView) {
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
    
        denominatorStackView.translatesAutoresizingMaskIntoConstraints = false

        denominatorStackView.centerXAnchor.constraint(equalTo: superView.centerXAnchor, constant: centerXFormulaAnchor).isActive = true
        denominatorStackView.centerYAnchor.constraint(equalTo: superView.centerYAnchor, constant: 25).isActive = true
    }

    func addSymbolPhysicalQuantity(formulaStackView: UIStackView, superView: UIView) {
        formulaStackView.axis = .horizontal
        formulaStackView.alignment = .fill
        formulaStackView.spacing = 0
        formulaStackView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        superView.addSubview(formulaStackView)
    
        formulaStackView.translatesAutoresizingMaskIntoConstraints = false

        formulaStackView.trailingAnchor.constraint(equalTo: fractionLineView.leadingAnchor).isActive = true
    
        formulaStackView.centerYAnchor.constraint(equalTo: fractionLineView.centerYAnchor).isActive = true

    }

    func addSymbolLabel(formulaStackView: UIStackView, symbolLabels: inout [UILabel]) {
        let symbolLabel = UILabel()
        symbolLabel.backgroundColor = #colorLiteral(red: 0.1882152259, green: 0.1882481873, blue: 0.1882079244, alpha: 1)
        symbolLabel.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        symbolLabel.textAlignment = .center
		symbolLabel.font = UIFont(name: "GFSDidot-Regular", size: FormulasReferenceViewController.symbolLabelSize)
        symbolLabel.text = "?"
        symbolLabel.frame.size = symbolLabel.intrinsicContentSize

        symbolLabel.translatesAutoresizingMaskIntoConstraints = false

        symbolLabels.append(symbolLabel)
        formulaStackView.addArrangedSubview(symbolLabel)
    }

    func addFractionLine(superView: UIView) {
        
        superView.addSubview(fractionLineView)
        fractionLineView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        fractionLineView.topAnchor.constraint(equalTo: numeratorFractionStackView.bottomAnchor).isActive = true
        fractionLineView.heightAnchor.constraint(equalToConstant: 3).isActive = true
        fractionLineView.centerXAnchor.constraint(equalTo: numeratorFractionStackView.centerXAnchor).isActive = true
        fractionLineView.translatesAutoresizingMaskIntoConstraints = false
    }
}
