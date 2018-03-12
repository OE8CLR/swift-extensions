//
//  Group.swift
//  SwiftExtensions
//
//  Created by Christoph Lückler on 21.02.18.
//  Copyright © 2018 Christoph Lückler. All rights reserved.
//

import Foundation

public class Group<TKey, TElement> {
    
    // MARK: Properties
    
    private var elements: [TElement]
    
    public var key: TKey
    
    public var count: Int {
        return self.elements.count
    }
    
    public var first: TElement? {
        return self.elements.first
    }
    
    public var last: TElement? {
        return self.elements.last
    }
    
    // MARK: Init
    
    public init(_ key: TKey, elements: [TElement]? = nil) {
        self.key = key
        self.elements = elements ?? [TElement]()
    }
    
}

// MARK: Public methods
public extension Group {
    
    public subscript(index: Int) -> TElement {
        get {
            return self.elements[index]
        }
        set(newElement) {
            self.elements.insert(newElement, at: index)
        }
    }
    
    public func insert(newElement: TElement, at index: Int) {
        self.elements.insert(newElement, at: index)
    }
    
    public func append(newElement: TElement) {
        self.elements.append(newElement)
    }
    
}

// MARK: Public methods
public extension Group where TElement: Equatable {
    
    public func contains(element: TElement) -> Bool {
        return self.elements.contains { (value) -> Bool in
            return value == element
        }
    }
    
}
