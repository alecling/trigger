//
//  TagCategoryTableViewController.swift
//  trigger
//
//  Created by Alexa Clingerman on 11/26/18.
//  Copyright © 2018 Alexa Clingerman. All rights reserved.
//

import Foundation
import UIKit

class TagCategoryTableViewController: UITableViewController{
 
        override func viewWillAppear(_ animated: Bool) {
            
            tableView.reloadData()
            
        }
        
        
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            
            // return 1
            return TagCategory.getAllTagCategories().count // 7
            
        }
        
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            
            // CREATE AN INSTANCE OF UITableViewCell
            let tagCategoryCell = tableView.dequeueReusableCell(withIdentifier: "TagCategoryCell", for: indexPath)
            
            let thisTagCategory = TagCategory.getAllTagCategories()[indexPath.row] as! TagCategory
            
            // FORMAT THE CELL WITH INFORMATION FROM THE FILM OBJECT
            tagCategoryCell.textLabel?.text = thisTagCategory.title
            
            // RETURN THE FORMATTED CELL
            return tagCategoryCell
            
        }
        
//        override func prepare(for segue: UIStoryboardSegue, sender: Any?){
//
//            if segue.identifier == "tagView" {
//
//                let tagView = segue.destination as! TagTableViewController
//
//                if let indexPath = self.tableView.indexPathForSelectedRow {
//
//                    let selectedTag = Tag.getAllTags()[indexPath.row] as! Tag
//
//                    tagView.selectedTag = selectedTag
//
//                }
//
            }
    

