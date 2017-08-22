//
//  ViewController.swift
//  屬性文字
//
//  Created by nickLin on 2017/8/6.
//  Copyright © 2017年 nickLin. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    fileprivate lazy var attribArray: [DataSoure] = Attrib.getAttrib()
    
    fileprivate lazy var table: UITableView = {
        let table = UITableView()
        table.delegate = self
        table.dataSource = self
        table.registerCell(type: AttribCell.self)
        return table
    } ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(table)
        table.mLay(pin: .zero, to: view)
    }

}

extension MainVC: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return attribArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueCell(type: AttribCell.self)
        cell.cellForAttrib(attribArray[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let data = attribArray[indexPath.row]
        let vc = ShowAttribStringVC()
        vc.setup(form: data)
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
