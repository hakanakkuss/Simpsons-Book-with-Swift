//
//  Simpsons.swift
//  Simpson Book Project
//
//  Created by Macbook Pro on 11.07.2022.
//

import Foundation
import UIKit

class Simpsons {  //simpsons adında bir class tanımladık
    
    var name: String = ""
    var job: String = ""
    var image: UIImage
    
    init(SimpsonName:String,SimpsonJob:String,Simpsonimage:UIImage){  //initialize ettik constructor yani.
        
        name = SimpsonName
        job = SimpsonJob
        image = Simpsonimage
        
    }
}
