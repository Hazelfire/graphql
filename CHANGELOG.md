# Change Log
All notable changes to this project will be documented in this file.

## Unreleased
### Changed
- `Language.GraphQL.Encoder` moved to `Language.GraphQL.AST.Encoder`.
- `Language.GraphQL.Parser` moved to `Language.GraphQL.AST.Parser`.
- `Language.GraphQL.Lexer` moved to `Language.GraphQL.AST.Lexer`.
- All `Language.GraphQL.AST.Value` data constructor prefixes were removed. The
  module should be imported qualified.
- All `Language.GraphQL.AST.Core.Value` data constructor prefixes were removed.
  The module should be imported qualified.
- Make `Language.GraphQL.AST.Core.Object` is now just a HashMap.
- `Language.GraphQL.AST.Transform` is now isn't exposed publically anymore.

### Added
  - Nested fragment support.

## [0.5.1.0] - 2019-10-22
### Deprecated
- `Language.GraphQL.AST.Arguments`. Use `[Language.GraphQL.AST.Argument]`
  instead.
- `Language.GraphQL.AST.Directives`. Use `[Language.GraphQL.AST.Directives]`
  instead.
- `Language.GraphQL.AST.VariableDefinitions`. Use
  `[Language.GraphQL.AST.VariableDefinition]` instead.

### Added
- Module documentation.
- Inline fragment support.

### Fixed
- Top-level fragments.
- Fragment for execution is chosen based on the type.

## [0.5.0.1] - 2019-09-10
### Added
- Minimal documentation for all public symbols.

### Deprecated
- `Language.GraphQL.AST.FragmentName`. Replaced with Language.GraphQL.AST.Name.
- `Language.GraphQL.Execute.Schema` - It is not a schema (at least not a
  complete one), but a resolver list, and the resolvers should be provided by
  the user separately, because the schema can originate from a GraphQL
  document. `Schema` name should be free to provide a data type for the real
  schema later.
- `Language.GraphQL.Schema`: `enum`, `enumA`, `wrappedEnum` and `wrappedEnumA`.
  There are actually only two generic types in GraphQL: Scalars and objects.
  Enum is a scalar value.

### Fixed
- Parsing block string values.

## [0.5.0.0] - 2019-08-14
### Added
- `executeWithName` executes an operation with the given name.
- Export `Language.GraphQL.Encoder.definition`,
  `Language.GraphQL.Encoder.type'` and `Language.GraphQL.Encoder.directive`.
- Export `Language.GraphQL.Encoder.value`. Escapes \ and " in strings now.

### Changed
- `Operation` includes now possible operation name which allows to support
  documents with multiple operations.
- `Language.GraphQL.Encoder.document` and other encoding functions take a
  `Formatter` as argument to distinguish between minified and pretty printing.
- All encoder functions return `Data.Text.Lazy`.

### Removed
- Unused `Language.GraphQL.Encoder.spaced`.

## [0.4.0.0] - 2019-07-23
### Added
- Support for mutations.
- Error handling (with monad transformers).
- Nullable types.
- Arbitrary nested lists support.
- Potential BOM header parsing.

### Changed
- attoparsec is replaced with megaparsec.
- The library is now under `Language.GraphQL` (instead of `Data.GraphQL`).
- HUnit and tasty are replaced with Hspec.
- `Alternative`/`MonadPlus` resolver constraints are replaced with `MonadIO`.

### Removed
- Duplicates from `Language.GraphQL.AST` already available in
  `Language.GraphQL.AST.Core`.
- All module exports are now explicit, so private and help functions aren't
  exported anymore.

## [0.3] - 2015-09-22
### Changed
- Exact match numeric types to spec.
- Names follow now the spec.
- AST slightly different for better readability or easier parsing.
- Replace golden test for test to validate parsing/encoding.

### Added
- Parsing errors in all cases where `Alternative` is used.
- GraphQL encoder.

### Fixed
- Expect braces `inputValueDefinitions` instead of parens when parsing.

## [0.2.1] - 2015-09-16
### Fixed
- Include data files for golden tests in Cabal package.
- Support for ghc-7.8.

## [0.2] - 2015-09-14
### Added
- Rudimentary parser for `GraphQL` which successfully parses the sample file
  `kitchen-sink.graphql` from `graphql-js` tests.
- Golden test for `kitchen-sink.grahql` parsing.
### Changed
- Many optional data types in `GraphQl` didn't need to be wrapped in a `Maybe`.
- Some `newtype`s became type synonyms for easier parsing.

## 0.1 - 2015-09-12
### Added
- Data types for the GraphQL language.

[0.5.1.0]: https://github.com/caraus-ecms/graphql/compare/v0.5.0.1...v0.5.1.0
[0.5.0.1]: https://github.com/caraus-ecms/graphql/compare/v0.5.0.0...v0.5.0.1
[0.5.0.0]: https://github.com/caraus-ecms/graphql/compare/v0.4.0.0...v0.5.0.0
[0.4.0.0]: https://github.com/caraus-ecms/graphql/compare/v0.3...v0.4.0.0
[0.3]: https://github.com/caraus-ecms/graphql/compare/v0.2.1...v0.3
[0.2.1]: https://github.com/caraus-ecms/graphql/compare/v0.2...v0.2.1
[0.2]: https://github.com/caraus-ecms/graphql/compare/v0.1...v0.2
