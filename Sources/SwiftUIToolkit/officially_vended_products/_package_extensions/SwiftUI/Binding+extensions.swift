//
//  Binding+extensions.swift
//  
//
//  Created by Jeremy Bannister on 12/27/21.
//

///
extension Binding: ExpressionErgonomic { }

///
extension Binding {
    
    ///
    public func unwrap
        <Wrapped>
        ()
    -> Binding<Wrapped>?
    where Value == Optional<Wrapped> {
        
        ///
        if let value = self.wrappedValue {
            return
                Binding<Wrapped>(
                    get: { value },
                    set: { newValue in
                        if self.wrappedValue.isNotNil {
                            self.wrappedValue = .some(newValue)
                        }
                    }
                )
        } else {
            return nil
        }
    }
    
    ///
    public func forceUnwrap
        <Wrapped>
        ()
    -> Binding<Wrapped>
    where Value == Optional<Wrapped> {
        
        ///
        self.map(
            forward: { $0! },
            reverse: { $0 }
        )
    }
}

///
extension Binding {
    
    ///
    public func map
        <NewValue>
        (forward forwardTransform: @escaping (Value)->NewValue,
         reverse reverseTransform: @escaping (NewValue)->Value)
    -> Binding<NewValue> {
        
        ///
        Binding<NewValue>(
            get: { forwardTransform(self.wrappedValue) },
            set: { self.wrappedValue = reverseTransform($0) }
        )
    }
}
