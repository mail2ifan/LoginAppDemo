//
//  LoginDemoTests.swift
//  LoginDemoTests
//
//  Created by Iyyappan on 07/12/18.
//  Copyright © 2018 apple. All rights reserved.
//

import XCTest
@testable import LoginDemo

class LoginDemoTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testTitleName(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let login = storyboard.instantiateInitialViewController() as! ViewController
        let _ = login.view
        XCTAssertEqual("Welcome", login.lblTitle?.text)
    }
    
    func testUserName(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let login = storyboard.instantiateInitialViewController() as! ViewController
        let _ = login.view
        XCTAssertEqual("User Name", login.txtUserName.placeholder)
    }
    
    func testPasswordName(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let login = storyboard.instantiateInitialViewController() as! ViewController
        let _ = login.view
        XCTAssertEqual("Password", login.txtPassword.placeholder)
    }
    
}
