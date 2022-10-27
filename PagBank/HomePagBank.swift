//
//  HomePagBank.swift
//  PagBank
//
//  Created by user226298 on 10/21/22.
//

import UIKit

class HomePagBank: UIViewController{
    
    lazy var logoPag: UIImageView = {
        
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "logoPag")
        
        return image
        
        
    }()
    
    lazy var cadeado: UIImageView = {
        
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "cad")
        
        return image
        
        
    }()
    
    lazy var sino: UIImageView = {
        
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "sino")
        
        return image
        
        
    }()
    
    lazy var user: UIImageView = {
        
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "user")
        
        return image
        
        
    }()
    
    lazy var labelLogo: UILabel = {
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "PagBank"
        //label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.font = UIFont.italicSystemFont(ofSize: 20)
        
        return label
        
    }()
    
    lazy var saldoView: UIView = {
        
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = true
        view.layer.cornerRadius = 8
        view.layer.borderColor = UIColor.white.cgColor
        view.layer.borderWidth = 0
        view.layer.backgroundColor = .init(red: 000000, green: 000000, blue: 000000, alpha: 0.3)
        
        return view
        
    }()
    
    lazy var saldoLabel: UILabel = {
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Saldo"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 25)
        
        return label
    }()
    
    lazy var saldoValor: UILabel = {
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "R$ 1.000,00"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 30)
        
        return label
    }()
    
    lazy var olhoF: UIImageView = {
        
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "olhof")
        
        return image
    }()
    
    lazy var vendasView: UIView = {
        
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = true
        view.layer.cornerRadius = 8
        view.layer.borderColor = UIColor.white.cgColor
        view.layer.borderWidth = 0
        view.layer.backgroundColor = .init(red: 000000, green: 000000, blue: 000000, alpha: 0.3)
        
        return view
    }()
    
    lazy var vendasLabel: UILabel = {
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Vendas a Receber"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 20)
        
        return label
        
    }()
    
    lazy var vendasValorLabel: UILabel = {
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "RS 0,00"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 20)
        
        return label
        
    }()
    
    lazy var detalhesLabel: UILabel = {
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Ver detalhes do saldo"
        label.textColor = .yellow
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.backgroundColor = UIColor(red: 000000, green: 000000, blue: 000000, alpha: 0.6)
        label.layer.cornerRadius = 25
        label.layer.masksToBounds = true
        label.textAlignment = .center
        
        return label
        
    }()
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.isScrollEnabled = false
        tableView.separatorStyle = .none
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: CustomTableViewCell.identifier)
        
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        self.view.addSubview(labelLogo)
        self.view.addSubview(logoPag)
        self.view.addSubview(cadeado)
        self.view.addSubview(sino)
        self.view.addSubview(user)
        self.view.addSubview(saldoView)
        self.view.addSubview(saldoLabel)
        self.view.addSubview(saldoValor)
        self.view.addSubview(olhoF)
        self.view.addSubview(vendasView)
        self.view.addSubview(vendasLabel)
        self.view.addSubview(vendasValorLabel)
        self.view.addSubview(detalhesLabel)
        self.view.addSubview(self.tableView)
        
        constraintsLabelLogo()
        
    }
    
    
    private func constraintsLabelLogo(){
        NSLayoutConstraint.activate([
            self.labelLogo.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 55),
            self.labelLogo.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 65),
            
            self.logoPag.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 50),
            self.logoPag.widthAnchor.constraint(equalToConstant: 40),
            self.logoPag.heightAnchor.constraint(equalToConstant: 40),
            self.logoPag.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20),
            //self.logoPag.trailingAnchor.constraint(equalTo: self.labelLogo.leadingAnchor,constant: 10)
            
            self.cadeado.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 50),
            self.cadeado.widthAnchor.constraint(equalToConstant: 15),
            self.cadeado.heightAnchor.constraint(equalToConstant: 20),
            self.cadeado.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 300),
            
            self.sino.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 50),
            self.sino.widthAnchor.constraint(equalToConstant: 20),
            self.sino.heightAnchor.constraint(equalToConstant: 20),
            self.sino.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 330),
            
            self.user.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 50),
            self.user.widthAnchor.constraint(equalToConstant: 20),
            self.user.heightAnchor.constraint(equalToConstant: 20),
            self.user.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 360),
            
            self.saldoView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100),
            self.saldoView.heightAnchor.constraint(equalToConstant: 100),
            self.saldoView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10),
            self.saldoView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10),
           // self.saldoView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 500),
            
            self.saldoLabel.leadingAnchor.constraint(equalTo: self.saldoView.leadingAnchor, constant: 15),
            self.saldoLabel.topAnchor.constraint(equalTo: self.saldoView.topAnchor, constant: 20),
            //self.saldoLabel.centerYAnchor.constraint(equalTo: self.saldoView.centerYAnchor),
            //self.saldoLabel.heightAnchor.constraint(equalToConstant: 20),
            //self.saldoLabel.widthAnchor.constraint(equalToConstant: 20),
            
            self.saldoValor.leadingAnchor.constraint(equalTo: self.saldoView.leadingAnchor,constant: 15),
            self.saldoValor.topAnchor.constraint(equalTo: self.saldoLabel.topAnchor,constant: 25),
            
            self.olhoF.trailingAnchor.constraint(equalTo: self.saldoView.trailingAnchor, constant: -15),
            self.olhoF.topAnchor.constraint(equalTo: self.saldoView.topAnchor,constant: 15),
            self.olhoF.widthAnchor.constraint(equalToConstant: 30),
            self.olhoF.heightAnchor.constraint(equalToConstant: 30),
            
            self.vendasView.topAnchor.constraint(equalTo: self.saldoView.bottomAnchor, constant: 8),
            self.vendasView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10),
            self.vendasView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10),
            self.vendasView.heightAnchor.constraint(equalToConstant: 90),
            
            self.vendasLabel.topAnchor.constraint(equalTo: self.vendasView.topAnchor, constant: 15),
            self.vendasLabel.leadingAnchor.constraint(equalTo: self.vendasView.leadingAnchor, constant: 10),
            
            self.vendasValorLabel.topAnchor.constraint(equalTo: self.vendasLabel.bottomAnchor, constant: 5),
            self.vendasValorLabel.leadingAnchor.constraint(equalTo: self.vendasView.leadingAnchor, constant: 10),
            
            self.detalhesLabel.topAnchor.constraint(equalTo: self.vendasView.bottomAnchor,constant: 8),
            self.detalhesLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor,constant: 10),
            self.detalhesLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10),
            self.detalhesLabel.heightAnchor.constraint(equalToConstant: 50),
            
            self.tableView.topAnchor.constraint(equalTo: self.detalhesLabel.bottomAnchor, constant: 10),
            self.tableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 5),
            self.tableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -5),
            self.tableView.heightAnchor.constraint(equalToConstant: 300)
            
            
            
            ])
        }
    }

extension HomePagBank: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as? CustomTableViewCell
        
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }

}


