//
//  MainHeroesViewController.swift
//  AvengersApp
//
//  Created by Marc Perelló Sapiña on 11/12/20.
//

import UIKit


class MainHeroesViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView?
    
    private let heroRepository = HeroRepository()
    private var heroes: Heroes = []
    
    var dataCount: Int {
        return heroes.count
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        loadData()
        
        tableView?.register(UINib(nibName: "HeroesCellView",
                                  bundle: nil),
                            forCellReuseIdentifier: "HeroesCellView")
        
        tableView?.dataSource = self
        tableView?.delegate = self
        
    }
    

    func hero(at indexPath: IndexPath) -> Hero? {
        if (indexPath.row < heroes.count) {
            return heroes[indexPath.row]
        } else {
            return nil
        }
        
    }
    
    private func loadData() {
        heroes = heroRepository.heroesSample
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? DetailViewController,
              let data = sender as? Hero else {
            return
        }
        destination.heroeSelected = data
    }
    
}

extension MainHeroesViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataCount
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 222.0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HeroesCellView",
                                                 for: indexPath) as? HeroesCellView
        
        
        if let hero = hero(at: indexPath) {
            cell?.configureViews(hero: hero)
        }
        
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let hero = hero(at: indexPath) {
            performSegue(withIdentifier: "SEGUE_FROM_HEROES_TO_DETAIL",
                         sender: hero)
            
        }
        
    }
    

}


