// @generated
// This file was automatically generated and should not be edited.

import ApolloTestSupport
import AnimalKingdomAPI

public class PetRock: MockObject {
  public static let objectType: Object = AnimalKingdomAPI.Objects.PetRock
  public static let _mockFields = MockFields()
  public typealias MockValueCollectionType = Array<Mock<PetRock>>

  public struct MockFields {
    @Field<String>("favoriteToy") public var favoriteToy
    @Field<String>("humanName") public var humanName
    @Field<AnimalKingdomAPI.ID>("id") public var id
    @Field<Human>("owner") public var owner
  }
}

public extension Mock where O == PetRock {
  convenience init(
    favoriteToy: String? = nil,
    humanName: String? = nil,
    id: AnimalKingdomAPI.ID? = nil,
    owner: Mock<Human>? = nil
  ) {
    self.init()
    _set(favoriteToy, for: \.favoriteToy)
    _set(humanName, for: \.humanName)
    _set(id, for: \.id)
    _set(owner, for: \.owner)
  }
}
