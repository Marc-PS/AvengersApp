//
//  MainVillainsViewController.swift
//  AvengersApp
//
//  Created by Marc Perelló Sapiña on 11/12/20.
//

import UIKit

class MainVillainsViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView?
    
    private let villainRepository = VillainRepository()
    private var villains: Villains = []
    
    var dataCount: Int {
        return villains.count
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadData()
        
        tableView?.register(UINib(nibName: "VillainsCellView",
                                  bundle: nil),
                            forCellReuseIdentifier: "VillainsCellView")
        
        tableView?.dataSource = self
        tableView?.delegate = self
    
    }
    
    func villain(at indexPath: IndexPath) -> Villain? {
        if (indexPath.row < villains.count) {
            return villains[indexPath.row]
        } else {
            return nil
        }
        
    }
    
    private func loadData() {
        villains = villainRepository.villainsSample
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? DetailViewController,
              let data = sender as? Villain else {
            return
        }
        
        destination.villainSelected = data
    }
    
}


extension MainVillainsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataCount
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 222.0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VillainsCellView",
                                                 for: indexPath) as? VillainsCellView
        
        
        if let villain = villain(at: indexPath){
            cell?.configureViews(villain: villain)
        }
        
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let villain = villain(at: indexPath) {
            performSegue(withIdentifier: "SEGUE_FROM_VILLAINS_TO_DETAIL",
                         sender: villain)
            
        }
        
    }
    

}


