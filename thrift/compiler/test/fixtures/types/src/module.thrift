include "include.thrift"

namespace cpp apache.thrift.fixtures.types
namespace cpp2 apache.thrift.fixtures.types

typedef binary TBinary

struct decorated_struct {
  1: string field,
} (cpp.declare_hash, cpp.declare_equal_to)

struct ContainerStruct {
  12: list<i32> fieldA
  2: list<i32> (cpp.template = "std::list") fieldB
  3: list<i32> (cpp.template = "std::deque") fieldC
  4: list<i32> (cpp.template = "folly::fbvector") fieldD
  5: list<i32> (cpp.template = "folly::small_vector") fieldE
  6: set<i32> (cpp.template = "folly::sorted_vector_set") fieldF
  7: map<i32, string> (cpp.template = "folly::sorted_vector_map") fieldG
  8: include.SomeMap fieldH
}

struct CppTypeStruct {
  1: list<i32> (cpp.type = "std::list<int32_t>") fieldA
}

enum has_bitwise_ops {
  none = 0,
  zero = 1,
  one = 2,
  two = 4,
  three = 8,
} (cpp.declare_bitwise_ops)

enum is_unscoped {
  hello = 0,
  world = 1,
} (cpp.deprecated_enum_unscoped)

service SomeService {
  include.SomeMap bounce_map(1: include.SomeMap m),
  map<TBinary, i64> binary_keyed_map(1: list<i64> r)
}

struct VirtualStruct {
  1: i64 MyIntField,
} (cpp.virtual)

struct MyStructWithForwardRefEnum {
  1: MyForwardRefEnum a = NONZERO,
  2: MyForwardRefEnum b = MyForwardRefEnum.NONZERO,
}

enum MyForwardRefEnum {
  ZERO = 0,
  NONZERO = 12,
}

struct TrivialNumeric {
  1: i32 a,
  2: bool b,
}

struct TrivialNestedWithDefault {
  1: i32 z = 4,
  2: TrivialNumeric n = {'a': 3, 'b': true},
}

struct ComplexString {
  1: string a,
  2: map<string, i32> b,
}

struct ComplexNestedWithDefault {
  1: string z = '4',
  2: ComplexString n = {'a': '3', 'b': {'a': 3}},
}

struct MinPadding {
  1: required byte small,
  2: required i64 big,
  3: required i16 medium,
  4: required i32 biggish,
  5: required byte tiny,
} (cpp.minimize_padding)

struct MyStruct {
  1: i64 MyIntField,
  2: string MyStringField,
  3: i64 majorVer,
  4: MyDataItem data,
} (cpp2.noncomparable)

struct MyDataItem {} (cpp2.noncomparable)

struct Renaming {
  1: i64 foo (cpp.name = 'bar'),
}

struct AnnotatedTypes {
  1: TBinary (noop_annotation) binary_field,
  2: include.SomeListOfTypeMap (noop_annotation) list_field,
}

# Validates that C++ codegen performes appropriate topological sorting of
# structs definitions in the generated code
struct ForwardUsageRoot {
  # use the type before it is defined
  1: optional ForwardUsageStruct ForwardUsageStruct,
  # use the type before it is defined, but mark it as a ref in C++
  # (no need for it to be defined before this struct in generated code)
  2: optional ForwardUsageByRef ForwardUsageByRef (cpp.ref = "true"),
}

struct ForwardUsageStruct {
  1: optional ForwardUsageRoot foo
}

struct ForwardUsageByRef {
  1: optional ForwardUsageRoot foo
}
