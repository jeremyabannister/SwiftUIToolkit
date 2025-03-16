public enum HorizontalEdge {
    case leading
    case trailing
}

extension HorizontalEdge {
    public var asEdge: Edge {
        switch self {
        case .leading:  .leading
        case .trailing: .trailing
        }
    }
    
    public var opposite: Self {
        switch self {
        case .leading:  .trailing
        case .trailing: .leading
        }
    }
    
    public var associatedAlignment: HorizontalAlignment {
        switch self {
        case .leading:  .leading
        case .trailing: .trailing
        }
    }
}
