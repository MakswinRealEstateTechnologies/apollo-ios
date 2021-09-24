// MARK: - Fragment

/// A protocol representing a fragment that a `ResponseObject` object may be converted to.
///
/// A `ResponseObject` that conforms to `HasFragments` can be converted to
/// any `Fragment` included in it's `Fragments` object via its `fragments` property.
///
/// - SeeAlso: `HasFragments`, `ToFragments`
public protocol Fragment: AnySelectionSet {
  static var fragmentDefinition: String { get }
}

// MARK: - HasFragments

/// A protocol that a `ResponseObject` that contains fragments should conform to.
public protocol HasFragments: AnySelectionSet {

  /// A type representing all of the fragments contained on the `ResponseObject`.
  associatedtype Fragments: ResponseObject
}

public extension HasFragments {
  /// A `FieldData` object that contains accessors for all of the fragments
  /// the object can be converted to.
  var fragments: Fragments { Fragments(data: data) }
}
