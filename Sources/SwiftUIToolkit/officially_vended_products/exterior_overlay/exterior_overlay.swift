extension View {
    public func exteriorOverlay(
        _ overlay: some View,
        edge: HorizontalEdge,
        alignment: VerticalAlignment = .center
    ) -> some View {
        ExteriorOverlay(
            base: self,
            overlay: overlay,
            edge: edge,
            alignment: alignment
        )
    }
    
    public func exteriorOverlay(
        _ overlay: some View,
        edge: VerticalEdge,
        alignment: HorizontalAlignment = .center
    ) -> some View {
        ExteriorOverlay(
            base: self,
            overlay: overlay,
            edge: edge,
            alignment: alignment
        )
    }
    
    public func exteriorOverlay(
        _ overlay: some View,
        edge: Edge,
        horizontalAlignment: HorizontalAlignment = .center,
        verticalAlignment: VerticalAlignment = .center
    ) -> some View {
        ExteriorOverlay(
            base: self,
            overlay: overlay,
            edge: edge,
            horizontalAlignment: horizontalAlignment,
            verticalAlignment: verticalAlignment
        )
    }
}

extension View {
    public func exteriorOverlay(
        edge: HorizontalEdge,
        alignment: VerticalAlignment = .center,
        @ViewBuilder overlay: ()->some View
    ) -> some View {
        ExteriorOverlay(
            base: self,
            overlay: overlay(),
            edge: edge,
            alignment: alignment
        )
    }
    
    public func exteriorOverlay(
        edge: VerticalEdge,
        alignment: HorizontalAlignment = .center,
        @ViewBuilder overlay: ()->some View
    ) -> some View {
        ExteriorOverlay(
            base: self,
            overlay: overlay(),
            edge: edge,
            alignment: alignment
        )
    }
    
    public func exteriorOverlay(
        edge: Edge,
        horizontalAlignment: HorizontalAlignment = .center,
        verticalAlignment: VerticalAlignment = .center,
        @ViewBuilder overlay: ()->some View
    ) -> some View {
        ExteriorOverlay(
            base: self,
            overlay: overlay(),
            edge: edge,
            horizontalAlignment: horizontalAlignment,
            verticalAlignment: verticalAlignment
        )
    }
}

fileprivate struct ExteriorOverlay<Base: View, Overlay: View>: View {
    private let base: Base
    private let overlay: Overlay
    private let overlayAlignment: Alignment
    private let overlayOffsetForSize: (CGSize)->CGSize
    
    var body: some View {
        base.overlay {
            GeometryReader { geometry in
                overlay
                    .expand(alignment: overlayAlignment)
                    .offset(overlayOffsetForSize(geometry.size))
            }
        }
    }
}

fileprivate extension ExteriorOverlay {
    init(
        base: Base,
        overlay: Overlay,
        edge: HorizontalEdge,
        alignment: VerticalAlignment
    ) {
        self.init(
            base: base,
            overlay: overlay,
            edge: edge.asEdge,
            horizontalAlignment: .center, // Will never be used, because edge is guaranteed to be .leading or .trailing
            verticalAlignment: alignment
        )
    }
    
    init(
        base: Base,
        overlay: Overlay,
        edge: VerticalEdge,
        alignment: HorizontalAlignment
    ) {
        self.init(
            base: base,
            overlay: overlay,
            edge: edge.asEdge,
            horizontalAlignment: alignment,
            verticalAlignment: .center // Will never be used, because edge is guaranteed to be .top or .bottom
        )
    }
    
    init(
        base: Base,
        overlay: Overlay,
        edge: Edge,
        horizontalAlignment: HorizontalAlignment,
        verticalAlignment: VerticalAlignment
    ) {
        let horizontalAlignment: HorizontalAlignment =
            switch edge {
            case .top, .bottom: horizontalAlignment
            case .leading: .trailing
            case .trailing: .leading
            }
        let verticalAlignment: VerticalAlignment =
            switch edge {
            case .leading, .trailing: verticalAlignment
            case .top: .bottom
            case .bottom: .top
            }
        self.init(
            base: base,
            overlay: overlay,
            overlayAlignment: Alignment(
                horizontal: horizontalAlignment,
                vertical: verticalAlignment
            ),
            overlayOffsetForSize: { size in
                switch edge {
                case .top:      .init(0, -size.height)
                case .bottom:   .init(0, size.height)
                case .leading:  .init(-size.width, 0)
                case .trailing: .init(size.width, 0)
                }
            }
        )
    }
}
