//
//  Binding+extensions.swift
//  
//
//  Created by Jeremy Bannister on 12/27/21.
//

///
extension Binding: ExpressionErgonomic { }

///
public extension Binding {
    
    ///
    func unwrap <Wrapped> () -> Binding<Wrapped>? where Value == Optional<Wrapped> {
        self
            .nullify(if: wrappedValue.isNil)?
            .forceUnwrap()
    }
    
    ///
    func forceUnwrap <Wrapped> () -> Binding<Wrapped> where Value == Optional<Wrapped> {
        self.map(
            forward: { $0! },
            reverse: { $0 }
        )
    }
}

///
public extension Binding {
    
    ///
    func map <NewValue> (forward forwardTransform: @escaping (Value)->NewValue,
                         reverse reverseTransform: @escaping (NewValue)->Value)
        -> Binding<NewValue> {
        
        Binding<NewValue>(
            get: { forwardTransform(self.wrappedValue) },
            set: { self.wrappedValue = reverseTransform($0) }
        )
    }
}
