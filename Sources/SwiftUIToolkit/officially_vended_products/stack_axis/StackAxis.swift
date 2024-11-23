//
//  StackAxis.swift
//  
//
//  Created by Jeremy Bannister on 1/18/22.
//

///
public enum StackAxis:
    ValueType,
    Codable {
    
    ///
    case H
    
    ///
    case V
    
    ///
    case Z
}

///
extension StackAxis {
    
    ///
    public func defaultStackDescription(
        eagerOrLazy: EagerOrLazy = .eager
    ) -> StackDescription {
        
        ///
        self
            .defaultEagerStackDescription()
            .asStackDescription
            .setting(\.eagerOrLazy, to: eagerOrLazy)
    }
}

///
extension StackAxis {
    
    ///
    public func defaultEagerStackDescription() -> EagerStackDescription {
        switch self {
        case .H: return .H(alignment: .center, spacing: nil)
        case .V: return .V(alignment: .center, spacing: nil)
        case .Z: return .Z(alignment: .center)
        }
    }
}

///
extension StackAxis {
    
    ///
    public init(_ axis: Axis) {
        switch axis {
        case .horizontal: self = .H
        case .vertical: self = .V
        }
    }
}
