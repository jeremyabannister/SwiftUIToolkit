public enum VerticalEdge {
    case top
    case bottom
}

extension VerticalEdge {
    public var asEdge: Edge {
        switch self {
        case .top:    .top
        case .bottom: .bottom
        }
    }
    
    public var opposite: Self {
        switch self {
        case .top:    .bottom
        case .bottom: .top
        }
    }
    
    public var associatedAlignment: VerticalAlignment {
        switch self {
        case .top:    .top
        case .bottom: .bottom
        }
    }
}
