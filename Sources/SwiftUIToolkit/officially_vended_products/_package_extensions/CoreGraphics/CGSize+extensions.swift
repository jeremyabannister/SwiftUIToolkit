extension CGSize: @retroactive ExpressionErgonomic { }

extension CGSize {
    public static func square(_ sideLength: CGFloat) -> Self {
        .init(width: sideLength, height: sideLength)
    }
    
    public init(_ width: CGFloat, _ height: CGFloat) {
        self.init(width: width, height: height)
    }
}

extension CGSize {
    public var aspectRatio: CGFloat {
        width/height
    }
}
