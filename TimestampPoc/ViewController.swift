//
//  ViewController.swift
//  TimestampPoc
//
//  Created by Matheus Fernandes on 26/09/25.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var label: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "BICA KIWI"
        label.textColor = .yellow
        return label
    }()
    
    init() {
        Logger.shared.mark("VC init")
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        Logger.shared.mark("VC viewDidLoad")
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        view.addSubview(label)
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    override func viewDidAppear(_ animated: Bool) {
        Logger.shared.mark("VC viewDidAppear")
        super.viewDidAppear(animated)
        Logger.shared.report()
    }
}

