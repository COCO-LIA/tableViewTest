//
//  ViewController.swift
//  TableView
//
//  Created by 황현지 on 2020/12/18.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var restaurantNames = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery", "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif", "Graham Avenue Meats And Deli", "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional", "Barrafina", "Donostia", "Royal Oak", "CASK Pub and Kitchen"]

    var restaurantLocations = ["Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Sydney", "Sydney", "Sydney", "New York", "New York", "New York", "New York", "New York", "New York", "New York", "London", "London", "London", "London"]
    
    var restaurantImages = ["cafedeadend", "homei", "teakha", "cafeloisl", "petiteoyster", "forkeerestaurant", "posatelier", "bourkestreetbakery", "haighschocolate", "palominoespresso", "upstate", "traif", "grahamavenuemeats", "wafflewolf", "fiveleaves", "cafelore", "confessional", "barrafina", "donostia", "royaloak", "caskpubkitchen"]
    
    var restaurantTypes = ["Coffee & Tea Shop", "Cafe", "Tea House", "Austrian / Causual Drink", "French", "Bakery", "Bakery", "Chocolate", "Cafe", "American / Seafood", "American", "American", "Breakfast & Brunch", "Coffee & Tea", "Coffee & Tea", "Latin American", "Spanish", "Spanish", "Spanish", "British", "Thai"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! Cell1
        
        cell1.nameLabel.text = restaurantNames[indexPath.row]
        cell1.locationLabel.text = restaurantLocations[indexPath.row]
        cell1.typeLabel.text = restaurantTypes[indexPath.row]
        cell1.imgView.image = UIImage(named: restaurantImages[indexPath.row])
        
//
//       let cell1 = tableView.dequeueReusableCell(withIdentifier: "cell1")
//
//        cell1?.textLabel!.text = restaurantNames[indexPath.row]
//        cell1?.detailTextLabel!.text = restaurantLocations[indexPath.row]
//        //형변환, 아이콘과 이미지는 Assets에 넣어주면 됩니다.
//        cell1?.imageView?.image = UIImage(named: restaurantImages[indexPath.row])
//
        return cell1
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.row)번째 셀이 선택되었습니다")
        let Alert = UIAlertController(title: restaurantNames[indexPath.row], message: restaurantLocations[indexPath.row], preferredStyle: .alert)
        let cancelBtn = UIAlertAction(title: "확인", style: .cancel, handler: nil)
        
        Alert.addAction(cancelBtn)
        
        present(Alert, animated: true, completion: nil)
    }
    
}
