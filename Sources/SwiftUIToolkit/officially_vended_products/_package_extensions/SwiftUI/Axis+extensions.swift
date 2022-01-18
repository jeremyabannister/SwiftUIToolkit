//
//  Axis+extensions.swift
//  
//
//  Created by Jeremy Bannister on 1/18/22.
//

///
extension Axis: ExpressionErgonomic { }

///
@available(iOS 14.0, macOS 11.0, *)
public extension Axis {
    
    ///
    func defaultStackDescription (eagerOrLazy: EagerOrLazy = .eager) -> StackDescription {
        StackAxis(self).defaultStackDescription(eagerOrLazy: eagerOrLazy)
    }
}

///
public extension Axis {
    
    ///
    var correspondingAxisSet: Axis.Set {
        switch self {
        case .horizontal: return .horizontal
        case .vertical: return .vertical
        }
    }
}
