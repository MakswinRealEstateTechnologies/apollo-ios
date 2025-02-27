// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class HeroFriendsOfFriendsNamesQuery: GraphQLQuery {
  public static let operationName: String = "HeroFriendsOfFriendsNames"
  public static let document: ApolloAPI.DocumentType = .automaticallyPersisted(
    operationIdentifier: "37cd5626048e7243716ffda9e56503939dd189772124a1c21b0e0b87e69aae01",
    definition: .init(
      #"""
      query HeroFriendsOfFriendsNames($episode: Episode) {
        hero(episode: $episode) {
          __typename
          friends {
            __typename
            id
            friends {
              __typename
              name
            }
          }
        }
      }
      """#
    ))

  public var episode: GraphQLNullable<GraphQLEnum<Episode>>

  public init(episode: GraphQLNullable<GraphQLEnum<Episode>>) {
    self.episode = episode
  }

  public var __variables: Variables? { ["episode": episode] }

  public struct Data: StarWarsAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { StarWarsAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("hero", Hero?.self, arguments: ["episode": .variable("episode")]),
    ] }

    public var hero: Hero? { __data["hero"] }

    public init(
      hero: Hero? = nil
    ) {
      self.init(_dataDict: DataDict(data: [
        "__typename": StarWarsAPI.Objects.Query.typename,
        "hero": hero._fieldData,
        "__fulfilled": Set([
          ObjectIdentifier(Self.self)
        ])
      ]))
    }

    /// Hero
    ///
    /// Parent Type: `Character`
    public struct Hero: StarWarsAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { StarWarsAPI.Interfaces.Character }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("friends", [Friend?]?.self),
      ] }

      /// The friends of the character, or an empty list if they have none
      public var friends: [Friend?]? { __data["friends"] }

      public init(
        __typename: String,
        friends: [Friend?]? = nil
      ) {
        self.init(_dataDict: DataDict(data: [
          "__typename": __typename,
          "friends": friends._fieldData,
          "__fulfilled": Set([
            ObjectIdentifier(Self.self)
          ])
        ]))
      }

      /// Hero.Friend
      ///
      /// Parent Type: `Character`
      public struct Friend: StarWarsAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { StarWarsAPI.Interfaces.Character }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("id", StarWarsAPI.ID.self),
          .field("friends", [Friend?]?.self),
        ] }

        /// The ID of the character
        public var id: StarWarsAPI.ID { __data["id"] }
        /// The friends of the character, or an empty list if they have none
        public var friends: [Friend?]? { __data["friends"] }

        public init(
          __typename: String,
          id: StarWarsAPI.ID,
          friends: [Friend?]? = nil
        ) {
          self.init(_dataDict: DataDict(data: [
            "__typename": __typename,
            "id": id,
            "friends": friends._fieldData,
            "__fulfilled": Set([
              ObjectIdentifier(Self.self)
            ])
          ]))
        }

        /// Hero.Friend.Friend
        ///
        /// Parent Type: `Character`
        public struct Friend: StarWarsAPI.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { StarWarsAPI.Interfaces.Character }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("name", String.self),
          ] }

          /// The name of the character
          public var name: String { __data["name"] }

          public init(
            __typename: String,
            name: String
          ) {
            self.init(_dataDict: DataDict(data: [
              "__typename": __typename,
              "name": name,
              "__fulfilled": Set([
                ObjectIdentifier(Self.self)
              ])
            ]))
          }
        }
      }
    }
  }
}
