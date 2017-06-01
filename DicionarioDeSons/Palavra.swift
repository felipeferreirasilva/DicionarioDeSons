//
//  Palavra.swift
//  Dicionario
//
//  Created by Felipe Silva on 01/06/17.
//  Copyright © 2017 Felipe Silva. All rights reserved.
//

import Foundation

class Palavra{
    private var _portugues: String!
    private var _ingles: String!
    private var _palavras: [Palavra]!
    
    var portugues: String{
        get{
            return _portugues
        }set{
            _portugues = newValue
        }
    }
    
    var ingles: String{
        get{
            return _ingles
        }set{
            _ingles = newValue
        }
    }
    
    var palavras: [Palavra]{
        get{
            return _palavras
        }set{
            _palavras = newValue
        }
    }
    
    func criaPalavra(portugues: String, ingles: String){
        self.portugues = portugues
        self.ingles = ingles
    }
}
