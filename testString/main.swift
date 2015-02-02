//
//  main.swift
//  testString
//
//  Created by Dmytro Barsukov on 2/2/15.
//  Copyright (c) 2015 Dmytro Barsukov. All rights reserved.
//

import Foundation

var strTest = "rem"
var tsTest  = TString( strTest )
var tsTest2 = TString( "rem" )
var n       = stringLength( strTest )

tsTest2.tstring = tsTest.tstring
println( tsTest2.string )
tsTest2.string = "rem"
println( tsTest2.string )
if strTest == tsTest2 {
    println( n )
    println( tsTest2.count )
}