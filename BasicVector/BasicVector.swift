//
//  BasicVector.swift
//  BasicVector
//
//  Created by Jing Wang on 5/18/19.
//  Copyright © 2019 Jing Wang. All rights reserved.
//

import Foundation
import Alamofire
//MARK: Types

public typealias Scalar = Float

//MARK: Scalar

public extension Scalar {
    //public static let pi = Scalar(Double.pi)
    static let halfPi = Scalar(Scalar.pi / 2)
    static let quarterPi = Scalar(Scalar.pi / 4)
    static let twoPi = Scalar(Scalar.pi * 2)
    static let degreesPerRadian = 180 / pi
    static let radiansPerDegree = pi / 180
    static let epsilon: Scalar = 0.0001
    
    static func ~=(lhs: Scalar, rhs: Scalar) -> Bool {
        return Swift.abs(lhs - rhs) < .epsilon
    }
    
    func degToRad() -> Scalar{
        return self * Scalar.radiansPerDegree
    }
    
    func radToDeg() -> Scalar {
        return self * Scalar.degreesPerRadian
    }
}


public class BasicFunc {
    
    private var isNetworkAvailable: Bool? { return NetworkReachabilityManager()?.isReachable }
    
    
    public static var shared = BasicFunc()
    
    private init() {}
    
    public func getMetricA() -> Int {
        if isNetworkAvailable == true {
            return 7
        } else {
            return 0
        }
    }
}
