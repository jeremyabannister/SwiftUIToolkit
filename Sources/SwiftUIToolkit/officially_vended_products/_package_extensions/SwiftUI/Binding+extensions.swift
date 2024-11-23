//
//  Binding+extensions.swift
//  
//
//  Created by Jeremy Bannister on 12/27/21.
//

///
extension Binding: @retroactive ExpressionErgonomic { }

///
extension Binding where Value: Sendable {
    
    ///
    public func unwrapped<Wrapped>() -> Binding<Wrapped>?
        where Value == Wrapped? {
        
        ///
        guard let initialValue = self.wrappedValue else { return nil }
        
        ///
        return
            Binding<Wrapped>(
                get: { self.wrappedValue ?? initialValue },
                set: { newValue in
                    if self.wrappedValue.isNotNil {
                        self.wrappedValue = newValue
                    }
                }
            )
    }
}

///
extension Binding where Value: Sendable {
    
    ///
    public func forceUnwrap<Wrapped>() -> Binding<Wrapped>
        where Value == Optional<Wrapped> {
        
        ///
        self.map(
            forward: { $0! },
            reverse: { $0 }
        )
    }
}

///
extension Binding where Value: Sendable {
    
    ///
    public func map<NewValue>(
        forward forwardTransform: @escaping @Sendable (Value)->NewValue,
        reverse reverseTransform: @escaping @Sendable (NewValue)->Value
    ) -> Binding<NewValue> {
        
        ///
        Binding<NewValue>(
            get: { forwardTransform(self.wrappedValue) },
            set: { self.wrappedValue = reverseTransform($0) }
        )
    }
}
