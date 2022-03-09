//
//  MainPresenterTest.swift
//  FocusAppTests
//
//  Created by Robert Miller on 09.03.2022.
//

import XCTest
@testable import FocusApp

class MockView: MainViewProtocol{
    var titleTest: String?
    func setGreeting(greeting: String) {
        titleTest = greeting
    }
}

class MainPresenterTest: XCTestCase {
    
    var view: MockView!
    var person: Person!
    var presenter: MainPresenter!

    override func setUpWithError() throws {
        view = MockView()
        person = Person(name: "Baz", surname: "Bar")
        presenter = MainPresenter(view: view, person: person)
    }

    override func tearDownWithError() throws {
        view = nil
        person = nil
        presenter = nil
    }
    
    func testViewIsNotNil() {
        XCTAssertNotNil(view, "View is not nil")
    }
    
    func testModelIsNotNil() {
        XCTAssertNotNil(person, "Model is not nil")
    }
    
    func testPresenterIsNotNil() {
        XCTAssertNotNil(presenter, "Presenter is not nil")
    }
    
    func testView() {
        presenter.showGreeting()
        XCTAssertEqual(view.titleTest, "Hello, Baz Bar !")
    }
    
    func testPersonModel() {
        XCTAssertEqual(person.name, "Baz")
        XCTAssertEqual(person.surname, "Bar")
    }


}
