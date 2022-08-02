import Foundation

/// A helper protocol to enable `AnyHashable` conversion for types that do not have automatic
/// `AnyHashable` conversion implemented.
///
/// For most types that conform to `Hashable`, Swift automatically wraps them in an `AnyHashable`
/// when they are cast to or stored in a property of the `AnyHashable` type. This does not happen
/// automatically for containers with conditional `Hashable` conformance such as
/// `Optional`, `Array`, and `Dictionary`.
public protocol AnyHashableConvertible {
  /// Converts the type to an `AnyHashable`.
  var asAnyHashable: AnyHashable { get }
}

extension AnyHashableConvertible where Self: Hashable {
  /// Converts the type to an `AnyHashable` by casting self.
  ///
  /// This utilizes Swift's automatic `AnyHashable` conversion functionality.
  @inlinable public var asAnyHashable: AnyHashable { self }
}

extension AnyHashable: AnyHashableConvertible {}

extension Optional: AnyHashableConvertible where Wrapped: Hashable {}

extension JSONEncodableDictionary: AnyHashableConvertible where Value: Hashable {
  @inlinable public var asAnyHashable: AnyHashable { unsafeBitCast(self, to: AnyHashable.self) }
}

extension Array: AnyHashableConvertible where Element: Hashable {}