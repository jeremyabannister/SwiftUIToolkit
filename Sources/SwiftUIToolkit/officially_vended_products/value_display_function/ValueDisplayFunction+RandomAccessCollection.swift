//
//  ValueDisplayFunction+RandomAccessCollection.swift
//  
//
//  Created by Jeremy Bannister on 1/18/22.
//

// MARK: - Post-macOS11-iOS14

///
@available(iOS 14.0, macOS 11.0, *)
public extension ValueDisplayFunction where Value: RandomAccessCollection & DisplayableValue,
                                            Value.Element: Identifiable {
    
    ///
    static func scrollableStack
    <ElementDisplay: View>
    (axis: Axis,
     showsIndicators: Bool = true,
     elementDisplay: @escaping (Value.Element)->ElementDisplay)
    -> Self {
        
        .init { array in
            ScrollView(singleAxis: axis,
                       showsIndicators: showsIndicators) {
                
                array.displayed(
                    .stack(
                        axis.defaultStackDescription(eagerOrLazy: .lazy),
                        id: \.id,
                        elementDisplay: elementDisplay
                    )
                )
            }
        }
    }
}

///
@available(iOS 14.0, macOS 11.0, *)
public extension ValueDisplayFunction where Value: RandomAccessCollection & DisplayableValue {
    
    ///
    static func scrollableStack
    <ID: Hashable,
     ElementDisplay: View>
    (axis: Axis,
     showsIndicators: Bool = true,
     id idKeyPath: KeyPath<Value.Element, ID>,
     elementDisplay: @escaping (Value.Element)->ElementDisplay)
    -> Self {
        
        .init { array in
            ScrollView(singleAxis: axis,
                       showsIndicators: showsIndicators) {
                
                array.displayed(
                    .stack(
                        axis.defaultStackDescription(eagerOrLazy: .lazy),
                        id: idKeyPath,
                        elementDisplay: elementDisplay
                    )
                )
            }
        }
    }
}

///
@available(iOS 14.0, macOS 11.0, *)
public extension ValueDisplayFunction where Value: RandomAccessCollection & DisplayableValue,
                                            Value.Element: Identifiable {
    
    ///
    static func hStack
    (_ eagerOrLazy: EagerOrLazy = .eager,
     alignment: VerticalAlignment = .center,
     spacing: CGFloat? = nil,
     elementDisplay: ValueDisplayFunction<Value.Element>)
    -> Self {
        
        .hStack(
            eagerOrLazy,
            alignment: alignment,
            spacing: spacing,
            elementDisplay: { elementDisplay($0) }
        )
    }
    
    ///
    static func vStack
    (_ eagerOrLazy: EagerOrLazy = .eager,
     alignment: HorizontalAlignment = .center,
     spacing: CGFloat? = nil,
     elementDisplay: ValueDisplayFunction<Value.Element>)
    -> Self {
        
        .vStack(
            eagerOrLazy,
            alignment: alignment,
            spacing: spacing,
            elementDisplay: { elementDisplay($0) }
        )
    }
    
    ///
    static func zStack
    (_ eagerOrLazy: EagerOrLazy = .eager,
     alignment: Alignment = .center,
     spacing: CGFloat? = nil,
     elementDisplay: ValueDisplayFunction<Value.Element>)
    -> Self {
        
        .zStack(
            eagerOrLazy,
            alignment: alignment,
            spacing: spacing,
            elementDisplay: { elementDisplay($0) }
        )
    }
    
    ///
    static func stack
    (_ description: StackDescription,
     elementDisplay: ValueDisplayFunction<Value.Element>)
    -> Self {
        
        .stack(
            description,
            elementDisplay: { elementDisplay($0) }
        )
    }
}

///
@available(iOS 14.0, macOS 11.0, *)
public extension ValueDisplayFunction where Value: RandomAccessCollection & DisplayableValue,
                                            Value.Element: Identifiable {
    
    ///
    static func hStack
    <ElementDisplay: View>
    (_ eagerOrLazy: EagerOrLazy = .eager,
     alignment: VerticalAlignment = .center,
     spacing: CGFloat? = nil,
     elementDisplay: @escaping (Value.Element)->ElementDisplay)
    -> Self {
        
        .hStack(
            eagerOrLazy,
            alignment: alignment,
            spacing: spacing,
            id: \.id,
            elementDisplay: elementDisplay
        )
    }
    
    ///
    static func vStack
    <ElementDisplay: View>
    (_ eagerOrLazy: EagerOrLazy = .eager,
     alignment: HorizontalAlignment = .center,
     spacing: CGFloat? = nil,
     elementDisplay: @escaping (Value.Element)->ElementDisplay)
    -> Self {
        
        .vStack(
            eagerOrLazy,
            alignment: alignment,
            spacing: spacing,
            id: \.id,
            elementDisplay: elementDisplay
        )
    }
    
    ///
    static func zStack
    <ElementDisplay: View>
    (_ eagerOrLazy: EagerOrLazy = .eager,
     alignment: Alignment = .center,
     spacing: CGFloat? = nil,
     elementDisplay: @escaping (Value.Element)->ElementDisplay)
    -> Self {
        
        .zStack(
            eagerOrLazy,
            alignment: alignment,
            spacing: spacing,
            id: \.id,
            elementDisplay: elementDisplay
        )
    }
    
    ///
    static func stack
    <ElementDisplay: View>
    (_ description: StackDescription,
     elementDisplay: @escaping (Value.Element)->ElementDisplay)
    -> Self {
        
        .stack(
            description,
            id: \.id,
            elementDisplay: elementDisplay
        )
    }
}

///
@available(iOS 14.0, macOS 11.0, *)
public extension ValueDisplayFunction where Value: RandomAccessCollection & DisplayableValue {
    
    ///
    static func hStack
    <ID: Hashable>
    (_ eagerOrLazy: EagerOrLazy = .eager,
     alignment: VerticalAlignment = .center,
     spacing: CGFloat? = nil,
     id idKeyPath: KeyPath<Value.Element, ID>,
     elementDisplay: ValueDisplayFunction<Value.Element>)
    -> Self {
        
        .hStack(
            eagerOrLazy,
            alignment: alignment,
            spacing: spacing,
            id: idKeyPath,
            elementDisplay: { elementDisplay($0) }
        )
    }
    
    ///
    static func vStack
    <ID: Hashable>
    (_ eagerOrLazy: EagerOrLazy = .eager,
     alignment: HorizontalAlignment = .center,
     spacing: CGFloat? = nil,
     id idKeyPath: KeyPath<Value.Element, ID>,
     elementDisplay: ValueDisplayFunction<Value.Element>)
    -> Self {
        
        .vStack(
            eagerOrLazy,
            alignment: alignment,
            spacing: spacing,
            id: idKeyPath,
            elementDisplay: { elementDisplay($0) }
        )
    }
    
    ///
    static func zStack
    <ID: Hashable>
    (_ eagerOrLazy: EagerOrLazy = .eager,
     alignment: Alignment = .center,
     spacing: CGFloat? = nil,
     id idKeyPath: KeyPath<Value.Element, ID>,
     elementDisplay: ValueDisplayFunction<Value.Element>)
    -> Self {
        
        .zStack(
            eagerOrLazy,
            alignment: alignment,
            spacing: spacing,
            id: idKeyPath,
            elementDisplay: { elementDisplay($0) }
        )
    }
    
    ///
    static func stack
    <ID: Hashable>
    (_ description: StackDescription,
     id idKeyPath: KeyPath<Value.Element, ID>,
     elementDisplay: ValueDisplayFunction<Value.Element>)
    -> Self {
        
        .stack(
            description,
            id: idKeyPath,
            elementDisplay: { elementDisplay($0) }
        )
    }
}

///
@available(iOS 14.0, macOS 11.0, *)
public extension ValueDisplayFunction where Value: RandomAccessCollection & DisplayableValue {
    
    ///
    static func hStack
    <ID: Hashable,
     ElementDisplay: View>
    (_ eagerOrLazy: EagerOrLazy = .eager,
     alignment: VerticalAlignment = .center,
     spacing: CGFloat? = nil,
     id idKeyPath: KeyPath<Value.Element, ID>,
     elementDisplay: @escaping (Value.Element)->ElementDisplay)
    -> Self {
        
        .stack(
            .H(
                eagerOrLazy: eagerOrLazy,
                alignment: alignment,
                spacing: spacing
            ),
            id: idKeyPath,
            elementDisplay: elementDisplay
        )
    }
    
    ///
    static func vStack
    <ID: Hashable,
     ElementDisplay: View>
    (_ eagerOrLazy: EagerOrLazy = .eager,
     alignment: HorizontalAlignment = .center,
     spacing: CGFloat? = nil,
     id idKeyPath: KeyPath<Value.Element, ID>,
     @ViewBuilder elementDisplay: @escaping (Value.Element)->ElementDisplay)
    -> Self {
        
        .stack(
            .V(
                eagerOrLazy: eagerOrLazy,
                alignment: alignment,
                spacing: spacing
            ),
            id: idKeyPath,
            elementDisplay: elementDisplay
        )
    }
    
    ///
    static func zStack
    <ID: Hashable,
     ElementDisplay: View>
    (_ eagerOrLazy: EagerOrLazy = .eager,
     alignment: Alignment = .center,
     spacing: CGFloat? = nil,
     id idKeyPath: KeyPath<Value.Element, ID>,
     elementDisplay: @escaping (Value.Element)->ElementDisplay)
    -> Self {
        
        .stack(
            .Z(alignment: alignment),
            id: idKeyPath,
            elementDisplay: elementDisplay
        )
    }
    
    ///
    static func stack
    <ID: Hashable,
     ElementDisplay: View>
    (_ description: StackDescription,
     id idKeyPath: KeyPath<Value.Element, ID>,
     elementDisplay: @escaping (Value.Element)->ElementDisplay)
    -> Self {
        
        .init { array in
            description.makeStack {
                array.displayed(
                    .forEach(
                        id: idKeyPath,
                        elementDisplay: elementDisplay
                    )
                )
            }
        }
    }
}

// MARK:   Post-macOS11-iOS14
// MARK: - Pre-macOS11-iOS14

///
public extension ValueDisplayFunction where Value: RandomAccessCollection & DisplayableValue,
                                            Value.Element: Identifiable {
    
    ///
    static func eagerHStack
    (alignment: VerticalAlignment = .center,
     spacing: CGFloat? = nil,
     elementDisplay: ValueDisplayFunction<Value.Element>)
    -> Self {
        
        .eagerHStack(
            alignment: alignment,
            spacing: spacing,
            elementDisplay: { elementDisplay($0) }
        )
    }
    
    ///
    static func eagerVStack
    (alignment: HorizontalAlignment = .center,
     spacing: CGFloat? = nil,
     elementDisplay: ValueDisplayFunction<Value.Element>)
    -> Self {
        
        .eagerVStack(
            alignment: alignment,
            spacing: spacing,
            elementDisplay: { elementDisplay($0) }
        )
    }
    
    ///
    static func eagerZStack
    (alignment: Alignment = .center,
     spacing: CGFloat? = nil,
     elementDisplay: ValueDisplayFunction<Value.Element>)
    -> Self {
        
        .eagerZStack(
            alignment: alignment,
            spacing: spacing,
            elementDisplay: { elementDisplay($0) }
        )
    }
    
    ///
    static func forEach
    (elementDisplay: ValueDisplayFunction<Value.Element>)
    -> Self {
        
        .forEach(elementDisplay: { elementDisplay($0) })
    }
}

///
public extension ValueDisplayFunction where Value: RandomAccessCollection & DisplayableValue,
                                            Value.Element: Identifiable {
    
    ///
    static func eagerHStack
    <ElementDisplay: View>
    (alignment: VerticalAlignment = .center,
     spacing: CGFloat? = nil,
     elementDisplay: @escaping (Value.Element)->ElementDisplay)
    -> Self {
        
        .eagerHStack(
            alignment: alignment,
            spacing: spacing,
            id: \.id,
            elementDisplay: elementDisplay
        )
    }
    
    ///
    static func eagerVStack
    <ElementDisplay: View>
    (alignment: HorizontalAlignment = .center,
     spacing: CGFloat? = nil,
     elementDisplay: @escaping (Value.Element)->ElementDisplay)
    -> Self {
        
        .eagerVStack(
            alignment: alignment,
            spacing: spacing,
            id: \.id,
            elementDisplay: elementDisplay
        )
    }
    
    ///
    static func eagerZStack
    <ElementDisplay: View>
    (alignment: Alignment = .center,
     spacing: CGFloat? = nil,
     elementDisplay: @escaping (Value.Element)->ElementDisplay)
    -> Self {
        
        .eagerZStack(
            alignment: alignment,
            spacing: spacing,
            id: \.id,
            elementDisplay: elementDisplay
        )
    }
    
    ///
    static func forEach
    <ElementDisplay: View>
    (elementDisplay: @escaping (Value.Element)->ElementDisplay)
    -> Self {
        
        .forEach(
            id: \.id,
            elementDisplay: elementDisplay
        )
    }
}

///
public extension ValueDisplayFunction where Value: RandomAccessCollection & DisplayableValue {
    
    ///
    static func eagerHStack
    <ID: Hashable>
    (alignment: VerticalAlignment = .center,
     spacing: CGFloat? = nil,
     id idKeyPath: KeyPath<Value.Element, ID>,
     elementDisplay: ValueDisplayFunction<Value.Element>)
    -> Self {
        
        .eagerHStack(
            alignment: alignment,
            spacing: spacing,
            id: idKeyPath,
            elementDisplay: { elementDisplay($0) }
        )
    }
    
    ///
    static func eagerVStack
    <ID: Hashable>
    (alignment: HorizontalAlignment = .center,
     spacing: CGFloat? = nil,
     id idKeyPath: KeyPath<Value.Element, ID>,
     elementDisplay: ValueDisplayFunction<Value.Element>)
    -> Self {
        
        .eagerVStack(
            alignment: alignment,
            spacing: spacing,
            id: idKeyPath,
            elementDisplay: { elementDisplay($0) }
        )
    }
    
    ///
    static func eagerZStack
    <ID: Hashable>
    (alignment: Alignment = .center,
     spacing: CGFloat? = nil,
     id idKeyPath: KeyPath<Value.Element, ID>,
     elementDisplay: ValueDisplayFunction<Value.Element>)
    -> Self {
        
        .eagerZStack(
            alignment: alignment,
            spacing: spacing,
            id: idKeyPath,
            elementDisplay: { elementDisplay($0) }
        )
    }
    
    ///
    static func forEach
    <ID: Hashable>
    (id idKeyPath: KeyPath<Value.Element, ID>,
     elementDisplay: ValueDisplayFunction<Value.Element>)
    -> Self {
        
        .forEach(id: idKeyPath, elementDisplay: { elementDisplay($0) })
    }
}

///
public extension ValueDisplayFunction where Value: RandomAccessCollection & DisplayableValue {
    
    ///
    static func eagerHStack
    <ID: Hashable,
     ElementDisplay: View>
    (alignment: VerticalAlignment = .center,
     spacing: CGFloat? = nil,
     id idKeyPath: KeyPath<Value.Element, ID>,
     elementDisplay: @escaping (Value.Element)->ElementDisplay)
    -> Self {
        
        .eagerStack(
            .H(
                alignment: alignment,
                spacing: spacing
            ),
            id: idKeyPath,
            elementDisplay: elementDisplay
        )
    }
    
    ///
    static func eagerVStack
    <ID: Hashable,
     ElementDisplay: View>
    (alignment: HorizontalAlignment = .center,
     spacing: CGFloat? = nil,
     id idKeyPath: KeyPath<Value.Element, ID>,
     elementDisplay: @escaping (Value.Element)->ElementDisplay)
    -> Self {
        
        .eagerStack(
            .V(
                alignment: alignment,
                spacing: spacing
            ),
            id: idKeyPath,
            elementDisplay: elementDisplay
        )
    }
    
    ///
    static func eagerZStack
    <ID: Hashable,
     ElementDisplay: View>
    (alignment: Alignment = .center,
     spacing: CGFloat? = nil,
     id idKeyPath: KeyPath<Value.Element, ID>,
     elementDisplay: @escaping (Value.Element)->ElementDisplay)
    -> Self {
        
        .eagerStack(
            .Z(alignment: alignment),
            id: idKeyPath,
            elementDisplay: elementDisplay
        )
    }
    
    ///
    static func eagerStack
    <ID: Hashable,
     ElementDisplay: View>
    (_ description: EagerStackDescription,
     id idKeyPath: KeyPath<Value.Element, ID>,
     elementDisplay: @escaping (Value.Element)->ElementDisplay)
    -> Self {
        
        .init { array in
            description.makeStack {
                array.displayed(.forEach(id: idKeyPath, elementDisplay: elementDisplay))
            }
        }
    }
    
    ///
    static func forEach
    <ID: Hashable,
     ElementDisplay: View>
    (id idKeyPath: KeyPath<Value.Element, ID>,
     elementDisplay: @escaping (Value.Element)->ElementDisplay)
    -> Self {
        
        .init { array in
            ForEach(array, id: idKeyPath) { element in
                elementDisplay(element)
            }
        }
    }
}
// MARK:   Pre-macOS11-iOS14
