//
//  CustomTableViewClassVC.swift
//  MoreLessButtonForCell
//
//  Created by yogesh singh negi on 25/08/17.
//  Copyright © 2017 appinventiv. All rights reserved.
//

import UIKit


class CustomTableViewClassVC: UIViewController {

    
    var myIndexPathRowArray = [Int]()
    
    var moreBtnNameTitle = [String]()
    
    let nameArray = [
        """
  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ornare laoreet fermentum. Curabitur fermentum elit augue, at maximus dolor porta sed. Donec finibus pharetra augue, et vehicula dui ornare in. Duis efficitur non neque nec egestas. Pellentesque a placerat metus, vitae euismod ante. Sed faucibus congue blandit. Cras euismod massa quis accumsan auctor. Donec lobortis ligula in ullamcorper malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ornare laoreet fermentum. Curabitur fermentum elit augue, at maximus dolor porta sed. Donec finibus pharetra augue, et vehicula dui ornare in. Duis efficitur non neque nec egestas. Pellentesque a placerat metus, vitae euismod ante. Sed faucibus congue blandit. Cras euismod massa quis accumsan auctor. Donec lobortis ligula in ullamcorper malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ornare laoreet fermentum. Curabitur fermentum elit augue, at maximus dolor porta sed. Donec finibus pharetra augue, et vehicula dui ornare in. Duis efficitur non neque nec egestas. Pellentesque a placerat metus, vitae euismod ante. Sed faucibus congue blandit. Cras euismod massa quis accumsan auctor. Donec lobortis ligula in ullamcorper malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
 """,
        """
    Duis ullamcorper maximus dolor, ac placerat lectus. Suspendisse vitae arcu consectetur, feugiat enim quis, blandit sem. Maecenas vitae sem lobortis, imperdiet nibh eu, hendrerit ipsum. Integer sapien quam, rhoncus et pellentesque et, sollicitudin vel lorem. Aenean consectetur imperdiet eros, interdum elementum nulla gravida et. Etiam venenatis imperdiet ornare. Nullam justo velit, mattis sit amet nisi eget, blandit venenatis purus. Nunc ac metus facilisis turpis elementum tincidunt. Nulla quis venenatis nisl. Phasellus finibus nibh vitae nisi lobortis finibus. Cras id fringilla quam. Donec imperdiet feugiat lectus, eu venenatis eros mattis a. Morbi vitae velit mauris. Mauris vehicula leo nec nisl bibendum sodales. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris sed eros nulla.Duis ullamcorper maximus dolor, ac placerat lectus. Suspendisse vitae arcu consectetur, feugiat enim quis, blandit sem. Maecenas vitae sem lobortis, imperdiet nibh eu, hendrerit ipsum. Integer sapien quam, rhoncus et pellentesque et, sollicitudin vel lorem. Aenean consectetur imperdiet eros, interdum elementum nulla gravida et. Etiam venenatis imperdiet ornare. Nullam justo velit, mattis sit amet nisi eget, blandit venenatis purus. Nunc ac metus facilisis turpis elementum tincidunt. Nulla quis venenatis nisl. Phasellus finibus nibh vitae nisi lobortis finibus. Cras id fringilla quam. Donec imperdiet feugiat lectus, eu venenatis eros mattis a. Morbi vitae velit mauris. Mauris vehicula leo nec nisl bibendum sodales. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris sed eros nulla.




""",
        """
 Suspendisse congue bibendum massa vitae ornare. Vivamus bibendum vel erat a sodales. Suspendisse eu nisl ut lorem scelerisque bibendum. Suspendisse fringilla sollicitudin lectus a tincidunt. Vestibulum malesuada varius turpis. Sed congue, magna id commodo tristique, metus nulla auctor magna, ultrices lobortis ligula massa quis lectus. Phasellus at ligula euismod, tempor neque a, eleifend arcu. Curabitur interdum sagittis odio in ornare. Nulla placerat augue malesuada nibh pellentesque auctor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut et tempus ligula, eget molestie lacus. Duis eget dolor lobortis, ultrices turpis non, mollis ligula. Quisque sed risus eget nulla maximus pellentesque. Cras rutrum elit ornare arcu elementum, eget convallis enim ementum.Suspendisse congue bibendum massa vitae ornare. Vivamus bibendum vel erat a sodales. Suspendisse eu nisl ut lorem scelerisque bibendum. Suspendisse fringilla sollicitudin lectus a tincidunt. Vestibulum malesuada varius turpis. Sed congue, magna id commodo tristique, metus nulla auctor magna, ultrices lobortis ligula massa quis lectus. Phasellus at ligula euismod, tempor neque a, eleifend arcu. Curabitur interdum sagittis odio in ornare. Nulla placerat augue malesuada nibh pellentesque auctor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut et tempus ligula, eget molestie lacus. Duis eget dolor lobortis, ultrices turpis non, mollis ligula. Quisque sed risus eget nulla maximus pellentesque. Cras rutrum elit ornare arcu elementum, eget convallis enim elementum.
""",
        """
 Join Tiffi and Mr. Toffee on their sweet adventure through the Candy Kingdom. Travel through magical lands, visiting wondrous places and meeting deliciously kooky characters! Switch and match your way through hundreds of fun levels in this delicious puzzle adventure. The sweetest game just keeps getting sweeterSuspendisse congue bibendum massa vitae ornare. Vivamus bibendum vel erat a sodales. Suspendisse eu nisl ut lorem scelerisque bibendum. Suspendisse fringilla sollicitudin lectus a tincidunt. Vestibulum malesuada varius turpis. Sed congue, magna id commodo tristique, metus nulla auctor magna, ultrices lobortis ligula massa quis lectus. Phasellus at ligula euismod, tempor neque a, eleifend arcu. Curabitur interdum sagittis odio in ornare. Nulla placerat augue malesuada nibh pellentesque auctor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut et tempus ligula, eget molestie lacus. Duis eget dolor lobortis, ultrices turpis non, mollis ligula. Quisque sed risus eget nulla maximus pellentesque. Cras rutrum elit ornare arcu elementum, eget convallis enim ementum.Suspendisse congue bibendum massa vitae ornare. Vivamus bibendum vel erat a sodales. Suspendisse eu nisl ut lorem scelerisque bibendum. Suspendisse fringilla sollicitudin lectus a tincidunt. Vestibulum malesuada varius turpis. Sed congue, magna id commodo tristique, metus nulla auctor magna, ultrices lobortis ligula massa quis lectus. Phasellus at ligula euismod, tempor neque a, eleifend arcu. Curabitur interdum sagittis odio in ornare. Nulla placerat augue malesuada nibh pellentesque auctor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut et tempus ligula, eget molestie lacus. Duis eget dolor lobortis, ultrices turpis non, mollis ligula. Quisque sed risus eget nulla maximus pellentesque. Cras rutrum elit ornare arcu elementum, eget convallis enim elementum.!
""",
        """
 The Amazon India Shopping App brings to you, over 10 Crore original products and at great prices. Shop on the Amazon App for the latest electronics – Redmi 4, Apple iPhone 7, Samsung J7, OnePlus 3T & many more, accessories & software for your gadgets - memory cards, earphones, chargers, power banks & anti-virus. Don’t just stop there, shop for your home needs and choose from selection across TVs, refrigerators, water purifiers, washing machines, sofa sets, mattresses, bean bags, wall stickers & cookware. Shop from Amazon Fashion for all occasions – Formal attire, vacation wear to casual and daily wear – shirts for men, sarees & gowns for women, watches and jewellery to match and shoes & footwear to boot. Also, the kids range of clothes, footwear, toys - from remote control cars, to bicycles, skateboards and school supplies –bags, bottles & more. Download the Amazon India Shopping App for free, from Google Play Store & enjoy online shopping like never before.
 """,
        """
But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?
""",
        """
At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.
""",
        """
 Gboard has everything you love about Google Keyboard—speed and reliability, Glide Typing, voice typing, and more—plus Google Search built in. No more app switching; just search and share, right from your keyboard.
""",
        """
 Get the official YouTube app for Android phones and tablets. See what the world is watching -- from the hottest music videos to what’s trending in gaming, entertainment, news, and more. Subscribe to channels you love, share with friends, and watch on any device.
"""]
    

    
    @IBOutlet weak var customTableView: UITableView!
   

    
   
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.customTableView.delegate = self
        self.customTableView.dataSource = self
        self.navigationItem.title = "Play Store Apps"
        
        
        
        //Setting Default Initial Value for myTndexPathRowArray
        for tempIndex in 0...(nameArray.count - 1){
            self.myIndexPathRowArray.insert(self.nameArray.count, at: tempIndex)
            self.moreBtnNameTitle.insert("More", at: tempIndex)
        }
    }

  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
   
    @IBAction func moreBtnTapped(_ sender: UIButton) {
        
        guard let tableCell = self.tableCell(button: sender) as? CellForRowClass else {fatalError()}
        guard let indexPath = self.customTableView.indexPath(for: tableCell) else {fatalError()}
        if tableCell.moreBtnName.currentTitle! == "More"{
            self.myIndexPathRowArray[indexPath.row] = indexPath.row
            self.moreBtnNameTitle[indexPath.row] = "Less"
        }
        else if tableCell.moreBtnName.currentTitle! == "Less"{
            self.myIndexPathRowArray[indexPath.row] = self.nameArray.count
            self.moreBtnNameTitle[indexPath.row] = "More"
        }
        
        self.customTableView.reloadData()
        
    }

}



extension CustomTableViewClassVC: UITableViewDelegate,UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.nameArray.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CellForRowClass_ID") as? CellForRowClass else { fatalError("Cell Failed to load") }
        
        cell.nameLabel.text = self.nameArray[indexPath.row]
        cell.moreBtnName.setTitle(self.moreBtnNameTitle[indexPath.row], for: .normal)
        
        return cell
    }
    

    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.row == self.myIndexPathRowArray[indexPath.row]{
                return UITableViewAutomaticDimension
            }
        return 100
    }

    
    func tableCell(button: UIButton) -> UITableViewCell{
        var cell : UIView = button
        while !(cell is CellForRowClass) {
            if let super_view = cell.superview {
                cell = super_view
            }else{}
        }
        guard let tableCell = cell as? CellForRowClass else {fatalError()}
        return tableCell
    }
  
}



class CellForRowClass: UITableViewCell{
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var moreBtnName: UIButton!
    
}

