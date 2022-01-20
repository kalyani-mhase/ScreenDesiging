//
//  ViewController.swift
//  ScreenDesiging
//
//  Created by Admin on 20/01/22.
//

import UIKit



import UIKit

class ViewController: UIViewController {
 // var img = ["i1","i2","i3","i4","i5","i6"]
    var img = ["breakfast","gearshape.2.fill","lunch","dinner","dessert","cup.and.saucer.fill","nifhtlife","guitar","bag.fill","seal.fill","increase","location.fill","music.note","bookmark.fill","heart.fill"]
 // var name = ["All","Decor","Electronics","Entertainment","Fashion","farniture"]
   var name = ["Breakfast","Brunch","Lunch","Dinner","Desset","Coffee","NightLife","Fun","Shopping","Special","Treanding","Nearest","Top picks","Saved","Liked"]
    //var color = ["Link color","lightGray","blue","red","yellow","systemPink","black","gray","green","brown","red","lightGray","yellow","cyan","red"]
    var color = [#colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1), #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1), #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1), #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1), #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1), #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1), #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1), #colorLiteral(red: 1, green: 0.3558352811, blue: 0.3859762979, alpha: 1), #colorLiteral(red: 0.7101667523, green: 0.4251784682, blue: 0.8528766036, alpha: 1), #colorLiteral(red: 0.2424099743, green: 0.603574872, blue: 0.8407264352, alpha: 1), #colorLiteral(red: 0.9486684203, green: 0.5721268058, blue: 0.4533352852, alpha: 1), #colorLiteral(red: 1, green: 0.2527923882, blue: 1, alpha: 1), #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1), #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1), #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)]

    
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        collectionView.delegate = self
        collectionView.dataSource = self
    }
}
//Mark:UICollectionViewDataSource
extension ViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let img1 = img[indexPath.row]
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as? CollectionViewCell{
        
            switch indexPath.row {
            case 0:
                cell.image.image = UIImage(named: img[indexPath.row])
            case 1:
                cell.image.image = UIImage(systemName: img[indexPath.row])
            case 2:
                cell.image.image = UIImage(named: img[indexPath.row])
            case 3:
                cell.image.image = UIImage(named: img[indexPath.row])
            case 4:
                cell.image.image = UIImage(named: img[indexPath.row])
            case 5:
                cell.image.image = UIImage(systemName: img[indexPath.row])
            case 6:
                cell.image.image = UIImage(named: img[indexPath.row])
            case 7:
                cell.image.image = UIImage(named: img[indexPath.row])
            case 8:
                cell.image.image = UIImage(systemName: img[indexPath.row])
            case 9:
                cell.image.image = UIImage(systemName: img[indexPath.row])
            case 10:
                cell.image.image = UIImage(named: img[indexPath.row])
            case 11:
                cell.image.image = UIImage(systemName: img[indexPath.row])
            case 12:
                cell.image.image = UIImage(systemName: img[indexPath.row])
            case 13:
                cell.image.image = UIImage(systemName: img[indexPath.row])
            case 14:
                cell.image.image = UIImage(systemName: img[indexPath.row])
                
            default:
                cell.backgroundColor = #colorLiteral(red: 0.4169070125, green: 0.6570370793, blue: 0.9437184334, alpha: 1)
            }
            cell.tintColor =  color[indexPath.row]
            cell.label.text = name[indexPath.row]
          
            
            return cell
    }
        return CollectionViewCell()
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        name.count
    }
    
}


