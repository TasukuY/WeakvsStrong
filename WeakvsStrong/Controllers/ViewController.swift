////
////  ViewController.swift
////  WeakvsStrong
////
////  Created by Tasuku Yamamoto on 7/20/22.
////
//
import UIKit

class ViewController: UIViewController {

    var sean: Person?
    var seanMacbook: MacBook?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createObjects()
        assignProperties()
    }
    
    func createObjects() {
        sean = Person(name: "Sean", macbook: nil)
        seanMacbook = MacBook(name: "Sean's Macbook", owner: nil)
    }
    
    func assignProperties() {
        sean?.macbook = seanMacbook
        seanMacbook?.owner = sean
        
        sean = nil
//        print(seanMacbook?.owner)
        seanMacbook = nil
    }
    
    
}//End of class


//protocol SomeDelegate: AnyObject {
//    func didTapThing()
//}
//
//class Foo: SomeDelegate {
//
//    init() {
//        let vc = ViewController()
//        vc.delegate = self
//    }
//
//    func didTapThing() {
//
//    }
//
//}
//
//class ViewController: UIViewController {
//
//    //MARK: - Properties
//    private var data: Data?
//    weak var delegate: SomeDelegate?
//
//    //MARK: - Lifecycles
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//    }
//
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//
//        let alert = UIAlertController(title: "Title", message: "Message", preferredStyle: .alert)
//
//        alert.addAction(UIAlertAction(title: "Done", style: .cancel, handler: { [weak self] _ in
//            self?.doSomething()
//        }))
//
//        present(alert, animated: true)
//    }
//
//    //MARK: - Helper Methods
//    private func doSomething() {
//
//    }
//
//    private func getData(string: String, completion: ((Data?) -> Void)) {
//        completion(nil)
//    }
//
//    func foo() {
//        getData(string: "") { [weak self] data in
//
//            guard let strongSelf = self else { return }
//
//            self?.data = data
//        }
//    }
//
//}//End of class
//
