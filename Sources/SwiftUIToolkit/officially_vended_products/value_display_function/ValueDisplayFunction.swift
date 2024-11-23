//
//  ValueDisplayFunction.swift
//  
//
//  Created by Jeremy Bannister on 1/18/22.
//

///
public struct ValueDisplayFunction <Value>: ExpressionErgonomic, Sendable {

    ///
    internal private(set) var body: @Sendable (Value)->AnyView
    
    ///
    public func callAsFunction(_ value: Value) -> AnyView {
        body(value)
    }
    
    ///
    public init<Body: View>(@ViewBuilder body: @escaping @Sendable (Value)->Body) {
        self.body = { body($0).asAnyView() }
    }
}
