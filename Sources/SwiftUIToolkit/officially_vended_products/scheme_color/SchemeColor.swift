//
//  SchemeColor.swift
//  SwiftUIToolkit
//
//  Created by Jeremy Bannister on 11/23/24.
//

public struct SchemeColor: ShapeStyle, View, ExpressionErgonomic, Sendable {
    
    public let lightMode: Color
    public let darkMode: Color
    
    public init(
        lightMode: Color,
        darkMode: Color
    ) {
        self.lightMode = lightMode
        self.darkMode = darkMode
    }
    
    @Environment(\.colorScheme)
    private var colorScheme: ColorScheme
    
    public var body: Color {
        self.color(for: colorScheme)
    }
    
    public nonisolated func resolve(in environment: EnvironmentValues) -> Color {
        color(for: environment.colorScheme)
    }
    
    private nonisolated func color(for colorScheme: ColorScheme) -> Color {
        switch colorScheme {
        case .light: lightMode
        case .dark: darkMode
        @unknown default: lightMode
        }
    }
}

extension SchemeColor {
    public init(always color: Color) {
        self.init(
            lightMode: color,
            darkMode: color
        )
    }
}

extension SchemeColor {
    public static var white: Self {
        .init(always: .white)
    }
    public static var black: Self {
        .init(always: .black)
    }
    public static var red: Self {
        .init(always: .red)
    }
    public static var green: Self {
        .init(always: .green)
    }
    public static var blue: Self {
        .init(always: .blue)
    }
    public static var purple: Self {
        .init(always: .purple)
    }
    public static var yellow: Self {
        .init(always: .yellow)
    }
    public static var orange: Self {
        .init(always: .orange)
    }
    public static var cyan: Self {
        .init(always: .cyan)
    }
    public static var gray: Self {
        .init(always: .gray)
    }
    public static var brown: Self {
        .init(always: .brown)
    }
    public static var clear: Self {
        .init(always: .clear)
    }
    public static var indigo: Self {
        .init(always: .indigo)
    }
    public static var mint: Self {
        .init(always: .mint)
    }
    public static var pink: Self {
        .init(always: .pink)
    }
    public static var teal: Self {
        .init(always: .teal)
    }
}
