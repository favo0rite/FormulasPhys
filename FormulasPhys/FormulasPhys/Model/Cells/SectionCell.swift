//
//  SectionCell.swift
//  FormulasPhys
//
//  Created by out-zamotaev-pk on 09.08.2021.
//

import UIKit

final class SectionCell: UITableViewCell {

    static let reuseId = "SectionCell"

    let sectionTitleLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = #colorLiteral(red: 0.1882152259, green: 0.1882481873, blue: 0.1882079244, alpha: 1)
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.textAlignment = .center
        label.layer.cornerRadius = 6
        label.layer.masksToBounds = true
        label.font = UIFont.systemFont(ofSize: 20)
        label.text = "Кинематика"
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = #colorLiteral(red: 0.2587976158, green: 0.2588401437, blue: 0.258788228, alpha: 1)
        setupSectionTitleLabel()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupSectionTitleLabel() {
        addSubview(sectionTitleLabel)
        sectionTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5).isActive = true
        sectionTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5).isActive = true
        sectionTitleLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
        sectionTitleLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive = true
    }
}
