//
//  ViewController.swift
//  09_10_2023_TableViewDemo3
//
//  Created by Vishal Jagtap on 13/12/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var studentTableView: UITableView!
    
    var studentNames = ["Gajanan","Harsh","Aditya","Smita","Komal"]
    
    // creating studentObjects and array of objects
    /*var students : [Student] = [
        Student(firstName: "Smita", lastName: "abc", rollNumber: 1),
        Student(firstName: "Gajanan", lastName: "Bidwai", rollNumber: 2),
        Student(firstName: "Rutik", lastName: "Thorat", rollNumber: 3)]*/
    
    private let studentTableViewCellIdentifier = "StudentTableViewCell"
    private let secondViewControllerIdentifier = "SecondViewController"
    var studentTableViewCell : StudentTableViewCell?
    var secondViewController : SecondViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeStudentTableView()
        registerXIBWithStudentTableView()
    }
    
    func initializeStudentTableView(){
        studentTableView.dataSource = self
        studentTableView.delegate = self
    }
    
    func registerXIBWithStudentTableView(){
        let uiNib = UINib(nibName: studentTableViewCellIdentifier, bundle: nil)
        self.studentTableView.register(uiNib, forCellReuseIdentifier: studentTableViewCellIdentifier)
    }
}

extension ViewController : UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        studentNames.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        studentTableViewCell = self.studentTableView.dequeueReusableCell(withIdentifier: studentTableViewCellIdentifier, for: indexPath) as? StudentTableViewCell
        studentTableViewCell?.studentNameLabel.text = studentNames[indexPath.row]
        
        return studentTableViewCell!
    }
}

extension ViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        65.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("The selected row is : \(indexPath.row)")
        secondViewController = self.storyboard?.instantiateViewController(withIdentifier: secondViewControllerIdentifier) as? SecondViewController
        
        secondViewController?.studentName = studentNames[indexPath.row]
        
        self.navigationController?.pushViewController(secondViewController!, animated: true)
    }
}
