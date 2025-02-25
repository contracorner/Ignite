//
// StyledHTML.swift
// Ignite
// https://www.github.com/twostraws/Ignite
// See LICENSE for license information.
//

/// A concrete type used for style resolution that only holds attributes
@MainActor public struct StyledHTML: Modifiable {
    /// A collection of styles, classes, and attributes.
    var attributes = CoreAttributes()

    /// Adds inline styles to the element.
    /// - Parameter values: Variable number of `AttributeValue` objects
    /// - Returns: The modified `HTML` element
    public func style(_ property: Property, _ value: String) -> Self {
        var copy = self
        copy.attributes.add(styles: .init(property, value: value))
        return copy
    }
}
