//
//  TString.swift
//  testString
//
//  Created by Dmytro Barsukov on 2/2/15.
//  Copyright (c) 2015 Dmytro Barsukov. All rights reserved.
//

import Foundation

func stringLength( string: String ) -> Int{
    var nLength: Int = 0
    
    for c in string { nLength++ }
    return nLength;
}

public class TString{
    public init( _ str: String = "" ){ if str != "" { string = str } }
    public init( _ str: TString ){}
    
    public lazy var array = Array<Character>()
    
    public var tstring: TString{
        get{
            return self
        }
        
        set( newString ){
            array = newString.array
        }
    }
    
    public var string: String{
        get{
            var s = String()
            
            for c in array { s.append( c ) }
            return s
        }
        
        set( newString ){
            if !array.isEmpty { array = [] }
            for c in newString { array.append( c ) }
        }
    }
    
    public var count: Int{
        get{
            return array.count
        }
    }
}

func +=( lhs: TString, rhs: String ){
    for c in rhs { lhs.array.append( c ) }
}

func +=( lhs: TString, rhs: TString ){
    for c in rhs.array { lhs.array.append( c ) }
}

func ==( lhs: TString, rhs: String ) -> Bool{
    return lhs.string == rhs
}

func ==( lhs: String, rhs: TString ) -> Bool{
    return rhs.string == lhs
}

func ==( lhs: TString, rhs: TString ) -> Bool{
    return lhs.string == rhs.string
}
