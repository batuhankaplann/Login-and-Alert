//
//  ViewController.swift
//  uyarı Mesajları
//
//  Created by batuhan kaplan on 3.05.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var İsimTextField: UITextField!
    
    @IBOutlet weak var ŞifreTextField: UITextField!
    
    @IBOutlet weak var ŞifreTextFied2: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
           
     

    }


    @IBAction func Kaydet(_ sender: Any) {
    
        
       
           if İsimTextField.text == "" {
               
               yeni(başlık:"Uyarı", mesaj: "LÜTFEN İSİM GİRİNİZ")
           }
       
           
           else if  ŞifreTextField.text == "" {
               
               yeni(başlık: "Uyarı", mesaj: "LÜTFEN ŞİFRE GİRİNİZ")
               
           }
               
               else if ŞifreTextField.text != ŞifreTextFied2.text{
                   
                   yeni(başlık: "Uyarı", mesaj: "Şifreler eşit değil")
                   
               }
               
           
           
           else {
               
               yeni(başlık: "Uyarı", mesaj: "TEBRİKLER")
           }
           
       }

        
        
        
        func yeni(başlık:String, mesaj:String ) {
            
        
     let Uyarı =    UIAlertController.init(title:başlık, message: mesaj, preferredStyle: UIAlertController.Style.alert)
        
        
    let Aksiyon =   UIAlertAction.init(title: "OK", style:.default) { UIAlertAction in
            print("OK")
        }
        
        Uyarı.addAction(Aksiyon)
        
        self .present(Uyarı, animated: true)
    }
    
   
}


