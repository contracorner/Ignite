//
// Strong.swift
// Ignite
// https://www.github.com/twostraws/Ignite
// See LICENSE for license information.
//

/// Renders text with a strong text effect, which usually means bold.
public struct Strong: InlineElement {
    /// The content and behavior of this HTML.
    public var body: some HTML { self }

    /// The standard set of control attributes for HTML elements.
    public var attributes = CoreAttributes()

    /// Whether this HTML belongs to the framework.
    public var isPrimitive: Bool { true }

    /// The content that should be strengthened.
    var content: any InlineElement

    /// Creates a new `Strong` instance using an inline element builder
    /// that returns an array of content to place inside.
    public init(@InlineElementBuilder content: () -> some InlineElement) {
        self.content = content()
    }

    /// Creates a new `Strong` instance using one `InlineElement`
    /// that should be rendered with a strong effect.
    /// - Parameter singleElement: The element to strengthen.
    public init(_ singleElement: any InlineElement) {
        self.content = singleElement
    }

    /// Renders this element using publishing context passed in.
    /// - Returns: The HTML for this element.
    public func render() -> String {
        "<strong\(attributes)>\(content)</strong>"
    }
}
