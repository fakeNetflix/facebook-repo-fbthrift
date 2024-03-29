cpp_include "<deque>"

const list<i16> int_list = [
    0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
];

const map<i16, map<i16, i16>> LocationMap = {1: {1: 1}}

typedef list<i32> I32List
typedef list<list<string>> StrList2D
typedef map<string, i64> StrIntMap
typedef map<string, string> StrStrMap
typedef map<string, I32List> StrI32ListMap
typedef map<string, StrI32ListMap> StrStrIntListMapMap
typedef set<I32List> SetI32Lists
typedef set<SetI32Lists> SetSetI32Lists
typedef set<i32> SetI32
typedef bool Bool
typedef i64 TimeStamp
typedef byte Byte
typedef float Float
typedef double Double

exception UnusedError {
    1: string message
} (message="message")

exception HardError {
    1: string errortext
    2: required i32 code
} (message="errortext")

exception UnfriendlyError {
    1: string errortext
    2: required i32 code
}

enum Color {
  red = 0,
  blue = 1,
  green = 2,
}

exception SimpleError {
    1: Color color;
}

enum Perm {
  read = 4,
  write = 2,
  execute = 1,
} (py3.flags)

enum Kind {
    None = 0,
    REGULAR = 8,
    LINK = 10,
    DIR = 4,
    FIFO = 1,
    CHAR = 2,
    BLOCK = 6,
    SOCK = 12 (cpp.name = "SOCKET"),
}

enum BadMembers {
    name = 1,
    value = 2,
}

enum EmptyEnum {
}

union EmptyUnion {
}

struct StringBucket {
    1: string one,
    2: optional string two,
    3: optional string three,
    4: optional string four,
    5: optional string five,
    6: optional string six,
    7: optional string seven,
    8: optional string eight,
    9: optional string nine,
    10: optional string ten,
}

struct File {
    1: required string name,
    2: Perm permissions,
    3: Kind type=Kind.REGULAR,
}

struct Digits {
    1: optional list<Integers> data,
}

union Integers {
    1: byte tiny,
    2: i16 small,
    3: i32 medium,
    4: i64 large,
    5: string unbounded,
    6: string name,   # name is an invalid enum member name
    7: Digits digits (cpp.ref="True"),
}

struct Error {
    1: string message,
}

union ValueOrError {
    1: File value (py3.name = "value_"),
    2: Error error,
}

struct easy {
    1: i32 val,
    2: I32List val_list,
    3: optional string name,
    4: Integers an_int,
}

struct Optionals {
    1: optional list<string> values,
}

union ComplexUnion {
    1: Color color,
    2: easy easy_struct,
    3: Integers union_val,
    4: float float_val,
    5: double double_val,
    6: i16 tiny,
    7: i64 large,
    9: string text,
    10: binary raw,
    11: bool truthy,
}

union IOBufUnion {
  1: binary (cpp2.type = "folly::IOBuf") buf,
} (cpp2.noncomparable)

struct hard {
    1: required i32 val,
    2: required I32List val_list,
    3: required string name,
    4: required Integers an_int,
    5: required string other = "some default",
}

struct Runtime {
    1: bool bool_val,
    2: Color enum_val,
    3: list<i64> int_list_val,
}

struct mixed {
    1: optional string opt_field = "optional",
    2: required string req_field = "required",
    3: string unq_field = "unqualified",
    4: optional easy opt_easy_ref (cpp.ref="True"),
    5: required easy req_easy_ref (cpp.ref="True"),
    6: list<string> const_container_ref (cpp.ref_type="shared_const"),
}

struct numerical {
    1: i32 int_val,
    2: double float_val,
    3: required i32 req_int_val,
    4: required double req_float_val,
    5: I32List int_list,
    6: list<double> float_list,
}

struct ColorGroups {
    1: list<Color> color_list,
    2: set<Color> color_set,
    3: map<Color, Color> color_map,
}

typedef list<i32> (cpp.type = "std::deque<int>") list_typedef
typedef set<i32> (cpp.type = "std::unordered_set<int>") set_typedef
typedef map<i32, i32> (cpp.type = "std::unordered_map<int, int>") map_typedef
typedef string (cpp.type = "folly::fbstring") string_typedef

struct customized {
  1: list<i32> (cpp.template = "std::deque") list_template
  2: set<i32> (cpp.template = "std::unordered_set") set_template,
  3: map<i32, i32> (cpp.template = "std::unordered_map") map_template,
  4: list_typedef list_type,
  5: set_typedef set_type,
  6: map_typedef map_type,
  7: string_typedef string_type,
  8: i32 foo (cpp.name="bar")
}

struct Reserved {
  1: string from,  // named with a python keyword (which is not a C++ keyword)
  2: i32 nonlocal, // ditto
  3: string ok,    // not a keyword
  4: bool cpdef (py3.name = 'is_cpdef'),
}

union ReservedUnion {
  1: string from,
  2: i32 nonlocal,
  3: string ok,
}

struct EdgeCaseStruct {
  1: map<Reserved, list<i64>> reservedValues,
}

struct SlowCompare {
  1: string field1,
  2: i32 field2,
  3: Color field3,
} (cpp2.noncomparable)

service TestingService {
    string getName()
    oneway void shutdown()
    bool invert(1: bool value)
    i32 complex_action(
        1: string first, 2: string second, 3: i64 third, 4: string fourth
    )
    void takes_a_list(1: I32List ints)
    void take_it_easy(1: i32 how, 2: easy what)
    void pick_a_color(1: Color color)
    void int_sizes(1: byte one, 2: i16 two, 3: i32 three, 4: i64 four)
} (fun_times = "yes", py3.pass_context)
