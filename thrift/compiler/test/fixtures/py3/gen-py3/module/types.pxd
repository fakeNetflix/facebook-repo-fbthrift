#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#

from libcpp.string cimport string
from libcpp cimport bool as cbool, nullptr, nullptr_t
from cpython cimport bool as pbool
from libc.stdint cimport int8_t, int16_t, int32_t, int64_t
from libcpp.memory cimport shared_ptr, unique_ptr
from libcpp.vector cimport vector
from libcpp.set cimport set as cset
from libcpp.map cimport map as cmap, pair as cpair
from thrift.py3.exceptions cimport cTException
cimport folly.iobuf as __iobuf
cimport thrift.py3.exceptions
cimport thrift.py3.types
from thrift.py3.types cimport bstring, move
from folly.optional cimport cOptional

cdef extern from *:
    ctypedef bstring foo_Bar "foo::Bar"

cdef extern from "src/gen-cpp2/module_types.h" namespace "::py3::simple":
    cdef cppclass cAnEnum "::py3::simple::AnEnum":
        bint operator==(cAnEnum&)
        bint operator!=(cAnEnum&)
    cAnEnum AnEnum__NOTSET "::py3::simple::AnEnum::None"
    cAnEnum AnEnum__ONE "::py3::simple::AnEnum::ONE"
    cAnEnum AnEnum__TWO "::py3::simple::AnEnum::TWO"
    cAnEnum AnEnum__THREE "::py3::simple::AnEnum::THREE"
    cAnEnum AnEnum__FOUR "::py3::simple::AnEnum::FOUR"
    cdef cppclass cFlags "::py3::simple::Flags":
        bint operator==(cFlags&)
        bint operator!=(cFlags&)
    cFlags Flags__flag_A "::py3::simple::Flags::flag_A"
    cFlags Flags__flag_B "::py3::simple::Flags::flag_B"
    cFlags Flags__flag_C "::py3::simple::Flags::flag_C"
    cFlags Flags__flag_D "::py3::simple::Flags::flag_D"




cdef class AnEnum(thrift.py3.types.CompiledEnum):
    pass


cdef cAnEnum AnEnum_to_cpp(AnEnum value)




cdef class Flags(thrift.py3.types.Flag):
    pass


cdef cFlags Flags_to_cpp(Flags value)



cdef extern from "src/gen-cpp2/module_types_custom_protocol.h" namespace "::py3::simple":
    # Forward Declaration
    cdef cppclass cSimpleException "::py3::simple::SimpleException"(cTException)
    # Forward Declaration
    cdef cppclass cOptionalRefStruct "::py3::simple::OptionalRefStruct"
    # Forward Declaration
    cdef cppclass cSimpleStruct "::py3::simple::SimpleStruct"
    # Forward Declaration
    cdef cppclass cComplexStruct "::py3::simple::ComplexStruct"
    # Forward Declaration
    cdef cppclass cBinaryUnion "::py3::simple::BinaryUnion"
    # Forward Declaration
    cdef cppclass cBinaryUnionStruct "::py3::simple::BinaryUnionStruct"

cdef extern from "src/gen-cpp2/module_types.h" namespace "::py3::simple":
    cdef cppclass cSimpleException__isset "::py3::simple::SimpleException::__isset":
        bint err_code

    cdef cppclass cSimpleException "::py3::simple::SimpleException"(cTException):
        cSimpleException() except +
        cSimpleException(const cSimpleException&) except +
        bint operator==(cSimpleException&)
        bint operator!=(cSimpleException&)
        bint operator<(cSimpleException&)
        bint operator>(cSimpleException&)
        bint operator<=(cSimpleException&)
        bint operator>=(cSimpleException&)
        int16_t err_code
        cSimpleException__isset __isset

    cdef cppclass cOptionalRefStruct__isset "::py3::simple::OptionalRefStruct::__isset":
        bint optional_blob

    cdef cppclass cOptionalRefStruct "::py3::simple::OptionalRefStruct":
        cOptionalRefStruct() except +
        cOptionalRefStruct(const cOptionalRefStruct&) except +
        bint operator==(cOptionalRefStruct&)
        bint operator!=(cOptionalRefStruct&)
        bint operator<(cOptionalRefStruct&)
        bint operator>(cOptionalRefStruct&)
        bint operator<=(cOptionalRefStruct&)
        bint operator>=(cOptionalRefStruct&)
        unique_ptr[__iobuf.cIOBuf] optional_blob
        cOptionalRefStruct__isset __isset

    cdef cppclass cSimpleStruct__isset "::py3::simple::SimpleStruct::__isset":
        bint is_on
        bint tiny_int
        bint small_int
        bint nice_sized_int
        bint big_int
        bint real
        bint smaller_real

    cdef cppclass cSimpleStruct "::py3::simple::SimpleStruct":
        cSimpleStruct() except +
        cSimpleStruct(const cSimpleStruct&) except +
        bint operator==(cSimpleStruct&)
        bint operator!=(cSimpleStruct&)
        bint operator<(cSimpleStruct&)
        bint operator>(cSimpleStruct&)
        bint operator<=(cSimpleStruct&)
        bint operator>=(cSimpleStruct&)
        cbool is_on
        int8_t tiny_int
        int16_t small_int
        int32_t nice_sized_int
        int64_t big_int
        double real
        float smaller_real
        cSimpleStruct__isset __isset

    cdef cppclass cComplexStruct__isset "::py3::simple::ComplexStruct::__isset":
        bint structOne
        bint structTwo
        bint an_integer
        bint name
        bint an_enum
        bint some_bytes
        bint sender "from"
        bint cdef_ "cdef"
        bint bytes_with_cpp_type

    cdef cppclass cComplexStruct "::py3::simple::ComplexStruct":
        cComplexStruct() except +
        cComplexStruct(const cComplexStruct&) except +
        bint operator==(cComplexStruct&)
        bint operator!=(cComplexStruct&)
        bint operator<(cComplexStruct&)
        bint operator>(cComplexStruct&)
        bint operator<=(cComplexStruct&)
        bint operator>=(cComplexStruct&)
        cSimpleStruct structOne
        cSimpleStruct structTwo
        int32_t an_integer
        string name
        cAnEnum an_enum
        string some_bytes
        string sender "from"
        string cdef_ "cdef"
        foo_Bar bytes_with_cpp_type
        cComplexStruct__isset __isset

    cdef enum cBinaryUnion__type "::py3::simple::BinaryUnion::Type":
        cBinaryUnion__type___EMPTY__ "::py3::simple::BinaryUnion::Type::__EMPTY__",
        cBinaryUnion__type_iobuf_val "::py3::simple::BinaryUnion::Type::iobuf_val",

    cdef cppclass cBinaryUnion "::py3::simple::BinaryUnion":
        cBinaryUnion() except +
        cBinaryUnion(const cBinaryUnion&) except +
        cBinaryUnion__type getType() const
        const __iobuf.cIOBuf& get_iobuf_val() const
        __iobuf.cIOBuf& set_iobuf_val(const __iobuf.cIOBuf&)

    cdef cppclass cBinaryUnionStruct__isset "::py3::simple::BinaryUnionStruct::__isset":
        bint u

    cdef cppclass cBinaryUnionStruct "::py3::simple::BinaryUnionStruct":
        cBinaryUnionStruct() except +
        cBinaryUnionStruct(const cBinaryUnionStruct&) except +
        cBinaryUnion u
        cBinaryUnionStruct__isset __isset

    cdef shared_ptr[cSimpleStruct] reference_shared_ptr_structOne "thrift::py3::reference_shared_ptr<::py3::simple::SimpleStruct>"(shared_ptr[cComplexStruct]&, cSimpleStruct&)
    cdef shared_ptr[cSimpleStruct] reference_shared_ptr_structTwo "thrift::py3::reference_shared_ptr<::py3::simple::SimpleStruct>"(shared_ptr[cComplexStruct]&, cSimpleStruct&)
    cdef shared_ptr[foo_Bar] reference_shared_ptr_bytes_with_cpp_type "thrift::py3::reference_shared_ptr<foo::Bar>"(shared_ptr[cComplexStruct]&, foo_Bar&)
    cdef shared_ptr[__iobuf.cIOBuf] reference_shared_ptr_iobuf_val "thrift::py3::reference_shared_ptr<folly::IOBuf>"(shared_ptr[cBinaryUnion]&, __iobuf.cIOBuf&)
    cdef shared_ptr[cBinaryUnion] reference_shared_ptr_u "thrift::py3::reference_shared_ptr<::py3::simple::BinaryUnion>"(shared_ptr[cBinaryUnionStruct]&, cBinaryUnion&)

cdef extern from "<utility>" namespace "std" nogil:
    cdef shared_ptr[cSimpleException] move(unique_ptr[cSimpleException])
    cdef shared_ptr[cSimpleException] move_shared "std::move"(shared_ptr[cSimpleException])
    cdef unique_ptr[cSimpleException] move_unique "std::move"(unique_ptr[cSimpleException])
    cdef shared_ptr[cOptionalRefStruct] move(unique_ptr[cOptionalRefStruct])
    cdef shared_ptr[cOptionalRefStruct] move_shared "std::move"(shared_ptr[cOptionalRefStruct])
    cdef unique_ptr[cOptionalRefStruct] move_unique "std::move"(unique_ptr[cOptionalRefStruct])
    cdef shared_ptr[cSimpleStruct] move(unique_ptr[cSimpleStruct])
    cdef shared_ptr[cSimpleStruct] move_shared "std::move"(shared_ptr[cSimpleStruct])
    cdef unique_ptr[cSimpleStruct] move_unique "std::move"(unique_ptr[cSimpleStruct])
    cdef shared_ptr[cComplexStruct] move(unique_ptr[cComplexStruct])
    cdef shared_ptr[cComplexStruct] move_shared "std::move"(shared_ptr[cComplexStruct])
    cdef unique_ptr[cComplexStruct] move_unique "std::move"(unique_ptr[cComplexStruct])
    cdef shared_ptr[cBinaryUnion] move(unique_ptr[cBinaryUnion])
    cdef shared_ptr[cBinaryUnion] move_shared "std::move"(shared_ptr[cBinaryUnion])
    cdef unique_ptr[cBinaryUnion] move_unique "std::move"(unique_ptr[cBinaryUnion])
    cdef shared_ptr[cBinaryUnionStruct] move(unique_ptr[cBinaryUnionStruct])
    cdef shared_ptr[cBinaryUnionStruct] move_shared "std::move"(shared_ptr[cBinaryUnionStruct])
    cdef unique_ptr[cBinaryUnionStruct] move_unique "std::move"(unique_ptr[cBinaryUnionStruct])

cdef extern from "<memory>" namespace "std" nogil:
    cdef shared_ptr[const cSimpleException] const_pointer_cast "std::const_pointer_cast<const ::py3::simple::SimpleException>"(shared_ptr[cSimpleException])
    cdef shared_ptr[const cOptionalRefStruct] const_pointer_cast "std::const_pointer_cast<const ::py3::simple::OptionalRefStruct>"(shared_ptr[cOptionalRefStruct])
    cdef shared_ptr[const cSimpleStruct] const_pointer_cast "std::const_pointer_cast<const ::py3::simple::SimpleStruct>"(shared_ptr[cSimpleStruct])
    cdef shared_ptr[const cComplexStruct] const_pointer_cast "std::const_pointer_cast<const ::py3::simple::ComplexStruct>"(shared_ptr[cComplexStruct])
    cdef shared_ptr[const cBinaryUnion] const_pointer_cast "std::const_pointer_cast<const ::py3::simple::BinaryUnion>"(shared_ptr[cBinaryUnion])
    cdef shared_ptr[const cBinaryUnionStruct] const_pointer_cast "std::const_pointer_cast<const ::py3::simple::BinaryUnionStruct>"(shared_ptr[cBinaryUnionStruct])

# Forward Definition of the cython struct
cdef class SimpleException(thrift.py3.exceptions.Error)


cdef class SimpleException(thrift.py3.exceptions.Error):
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cSimpleException] _cpp_obj

    @staticmethod
    cdef unique_ptr[cSimpleException] _make_instance(
        cSimpleException* base_instance,
        bint* __isNOTSET,
        object err_code
    ) except *

    @staticmethod
    cdef create(shared_ptr[cSimpleException])

# Forward Definition of the cython struct
cdef class OptionalRefStruct(thrift.py3.types.Struct)


cdef class OptionalRefStruct(thrift.py3.types.Struct):
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cOptionalRefStruct] _cpp_obj
    cdef __iobuf.IOBuf __field_optional_blob

    @staticmethod
    cdef unique_ptr[cOptionalRefStruct] _make_instance(
        cOptionalRefStruct* base_instance,
        bint* __isNOTSET,
        __iobuf.IOBuf optional_blob
    ) except *

    @staticmethod
    cdef create(shared_ptr[cOptionalRefStruct])

# Forward Definition of the cython struct
cdef class SimpleStruct(thrift.py3.types.Struct)


cdef class SimpleStruct(thrift.py3.types.Struct):
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cSimpleStruct] _cpp_obj

    @staticmethod
    cdef unique_ptr[cSimpleStruct] _make_instance(
        cSimpleStruct* base_instance,
        bint* __isNOTSET,
        pbool is_on,
        object tiny_int,
        object small_int,
        object nice_sized_int,
        object big_int,
        object real,
        object smaller_real
    ) except *

    @staticmethod
    cdef create(shared_ptr[cSimpleStruct])

# Forward Definition of the cython struct
cdef class ComplexStruct(thrift.py3.types.Struct)


cdef class ComplexStruct(thrift.py3.types.Struct):
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cComplexStruct] _cpp_obj
    cdef SimpleStruct __field_structOne
    cdef SimpleStruct __field_structTwo

    @staticmethod
    cdef unique_ptr[cComplexStruct] _make_instance(
        cComplexStruct* base_instance,
        bint* __isNOTSET,
        SimpleStruct structOne,
        SimpleStruct structTwo,
        object an_integer,
        str name,
        AnEnum an_enum,
        bytes some_bytes,
        str sender,
        str cdef_,
        bytes bytes_with_cpp_type
    ) except *

    @staticmethod
    cdef create(shared_ptr[cComplexStruct])

cdef class __BinaryUnionType(thrift.py3.types.CompiledEnum):
    pass


# Forward Definition of the cython struct
cdef class BinaryUnion(thrift.py3.types.Union)


cdef class BinaryUnion(thrift.py3.types.Union):
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cBinaryUnion] _cpp_obj
    cdef readonly __BinaryUnionType type
    cdef readonly object value
    cdef _load_cache(BinaryUnion self)
    cdef __BinaryUnion_eq(BinaryUnion self, BinaryUnion other)

    @staticmethod
    cdef unique_ptr[cBinaryUnion] _make_instance(
        cBinaryUnion* base_instance,
        __iobuf.IOBuf iobuf_val
    ) except *

    @staticmethod
    cdef create(shared_ptr[cBinaryUnion])

# Forward Definition of the cython struct
cdef class BinaryUnionStruct(thrift.py3.types.Struct)


cdef class BinaryUnionStruct(thrift.py3.types.Struct):
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cBinaryUnionStruct] _cpp_obj
    cdef BinaryUnion __field_u
    cdef __BinaryUnionStruct_eq(BinaryUnionStruct self, BinaryUnionStruct other)

    @staticmethod
    cdef unique_ptr[cBinaryUnionStruct] _make_instance(
        cBinaryUnionStruct* base_instance,
        bint* __isNOTSET,
        BinaryUnion u
    ) except *

    @staticmethod
    cdef create(shared_ptr[cBinaryUnionStruct])


cdef class List__i16:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[vector[int16_t]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[vector[int16_t]])
    @staticmethod
    cdef shared_ptr[vector[int16_t]] _make_instance(object items) except *

cdef class List__i32:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[vector[int32_t]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[vector[int32_t]])
    @staticmethod
    cdef shared_ptr[vector[int32_t]] _make_instance(object items) except *

cdef class List__i64:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[vector[int64_t]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[vector[int64_t]])
    @staticmethod
    cdef shared_ptr[vector[int64_t]] _make_instance(object items) except *

cdef class List__string:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[vector[string]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[vector[string]])
    @staticmethod
    cdef shared_ptr[vector[string]] _make_instance(object items) except *

cdef class List__SimpleStruct:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[vector[cSimpleStruct]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[vector[cSimpleStruct]])
    @staticmethod
    cdef shared_ptr[vector[cSimpleStruct]] _make_instance(object items) except *

cdef class Set__i32:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cset[int32_t]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[cset[int32_t]])
    @staticmethod
    cdef shared_ptr[cset[int32_t]] _make_instance(object items) except *

cdef class Set__string:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cset[string]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[cset[string]])
    @staticmethod
    cdef shared_ptr[cset[string]] _make_instance(object items) except *

cdef class Map__string_string:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cmap[string,string]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[cmap[string,string]])
    @staticmethod
    cdef shared_ptr[cmap[string,string]] _make_instance(object items) except *

cdef class Map__string_SimpleStruct:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cmap[string,cSimpleStruct]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[cmap[string,cSimpleStruct]])
    @staticmethod
    cdef shared_ptr[cmap[string,cSimpleStruct]] _make_instance(object items) except *

cdef class Map__string_i16:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cmap[string,int16_t]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[cmap[string,int16_t]])
    @staticmethod
    cdef shared_ptr[cmap[string,int16_t]] _make_instance(object items) except *

cdef class List__List__i32:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[vector[vector[int32_t]]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[vector[vector[int32_t]]])
    @staticmethod
    cdef shared_ptr[vector[vector[int32_t]]] _make_instance(object items) except *

cdef class Map__string_i32:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cmap[string,int32_t]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[cmap[string,int32_t]])
    @staticmethod
    cdef shared_ptr[cmap[string,int32_t]] _make_instance(object items) except *

cdef class Map__string_Map__string_i32:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cmap[string,cmap[string,int32_t]]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[cmap[string,cmap[string,int32_t]]])
    @staticmethod
    cdef shared_ptr[cmap[string,cmap[string,int32_t]]] _make_instance(object items) except *

cdef class List__Set__string:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[vector[cset[string]]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[vector[cset[string]]])
    @staticmethod
    cdef shared_ptr[vector[cset[string]]] _make_instance(object items) except *

cdef class Map__string_List__SimpleStruct:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cmap[string,vector[cSimpleStruct]]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[cmap[string,vector[cSimpleStruct]]])
    @staticmethod
    cdef shared_ptr[cmap[string,vector[cSimpleStruct]]] _make_instance(object items) except *

cdef class List__List__string:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[vector[vector[string]]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[vector[vector[string]]])
    @staticmethod
    cdef shared_ptr[vector[vector[string]]] _make_instance(object items) except *

cdef class List__Set__i32:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[vector[cset[int32_t]]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[vector[cset[int32_t]]])
    @staticmethod
    cdef shared_ptr[vector[cset[int32_t]]] _make_instance(object items) except *

cdef class List__Map__string_string:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[vector[cmap[string,string]]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[vector[cmap[string,string]]])
    @staticmethod
    cdef shared_ptr[vector[cmap[string,string]]] _make_instance(object items) except *

cdef class List__binary:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[vector[string]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[vector[string]])
    @staticmethod
    cdef shared_ptr[vector[string]] _make_instance(object items) except *

cdef class Set__binary:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cset[string]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[cset[string]])
    @staticmethod
    cdef shared_ptr[cset[string]] _make_instance(object items) except *

cdef class List__AnEnum:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[vector[cAnEnum]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[vector[cAnEnum]])
    @staticmethod
    cdef shared_ptr[vector[cAnEnum]] _make_instance(object items) except *

cdef class Map__i32_double:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cmap[int32_t,double]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[cmap[int32_t,double]])
    @staticmethod
    cdef shared_ptr[cmap[int32_t,double]] _make_instance(object items) except *

cdef class List__Map__i32_double:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[vector[cmap[int32_t,double]]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[vector[cmap[int32_t,double]]])
    @staticmethod
    cdef shared_ptr[vector[cmap[int32_t,double]]] _make_instance(object items) except *

cdef extern from "<utility>" namespace "std" nogil:
    cdef shared_ptr[vector[int16_t]] move "std::move"(unique_ptr[vector[int16_t]])
    cdef shared_ptr[vector[int16_t]] move_shared "std::move"(shared_ptr[vector[int16_t]])
    cdef shared_ptr[vector[int32_t]] move "std::move"(unique_ptr[vector[int32_t]])
    cdef shared_ptr[vector[int32_t]] move_shared "std::move"(shared_ptr[vector[int32_t]])
    cdef shared_ptr[vector[int64_t]] move "std::move"(unique_ptr[vector[int64_t]])
    cdef shared_ptr[vector[int64_t]] move_shared "std::move"(shared_ptr[vector[int64_t]])
    cdef shared_ptr[vector[string]] move "std::move"(unique_ptr[vector[string]])
    cdef shared_ptr[vector[string]] move_shared "std::move"(shared_ptr[vector[string]])
    cdef shared_ptr[vector[cSimpleStruct]] move "std::move"(unique_ptr[vector[cSimpleStruct]])
    cdef shared_ptr[vector[cSimpleStruct]] move_shared "std::move"(shared_ptr[vector[cSimpleStruct]])
    cdef shared_ptr[cset[int32_t]] move "std::move"(unique_ptr[cset[int32_t]])
    cdef shared_ptr[cset[int32_t]] move_shared "std::move"(shared_ptr[cset[int32_t]])
    cdef shared_ptr[cset[string]] move "std::move"(unique_ptr[cset[string]])
    cdef shared_ptr[cset[string]] move_shared "std::move"(shared_ptr[cset[string]])
    cdef shared_ptr[cmap[string,string]] move "std::move"(unique_ptr[cmap[string,string]])
    cdef shared_ptr[cmap[string,string]] move_shared "std::move"(shared_ptr[cmap[string,string]])
    cdef shared_ptr[cmap[string,cSimpleStruct]] move "std::move"(unique_ptr[cmap[string,cSimpleStruct]])
    cdef shared_ptr[cmap[string,cSimpleStruct]] move_shared "std::move"(shared_ptr[cmap[string,cSimpleStruct]])
    cdef shared_ptr[cmap[string,int16_t]] move "std::move"(unique_ptr[cmap[string,int16_t]])
    cdef shared_ptr[cmap[string,int16_t]] move_shared "std::move"(shared_ptr[cmap[string,int16_t]])
    cdef shared_ptr[vector[vector[int32_t]]] move "std::move"(unique_ptr[vector[vector[int32_t]]])
    cdef shared_ptr[vector[vector[int32_t]]] move_shared "std::move"(shared_ptr[vector[vector[int32_t]]])
    cdef shared_ptr[cmap[string,int32_t]] move "std::move"(unique_ptr[cmap[string,int32_t]])
    cdef shared_ptr[cmap[string,int32_t]] move_shared "std::move"(shared_ptr[cmap[string,int32_t]])
    cdef shared_ptr[cmap[string,cmap[string,int32_t]]] move "std::move"(unique_ptr[cmap[string,cmap[string,int32_t]]])
    cdef shared_ptr[cmap[string,cmap[string,int32_t]]] move_shared "std::move"(shared_ptr[cmap[string,cmap[string,int32_t]]])
    cdef shared_ptr[vector[cset[string]]] move "std::move"(unique_ptr[vector[cset[string]]])
    cdef shared_ptr[vector[cset[string]]] move_shared "std::move"(shared_ptr[vector[cset[string]]])
    cdef shared_ptr[cmap[string,vector[cSimpleStruct]]] move "std::move"(unique_ptr[cmap[string,vector[cSimpleStruct]]])
    cdef shared_ptr[cmap[string,vector[cSimpleStruct]]] move_shared "std::move"(shared_ptr[cmap[string,vector[cSimpleStruct]]])
    cdef shared_ptr[vector[vector[string]]] move "std::move"(unique_ptr[vector[vector[string]]])
    cdef shared_ptr[vector[vector[string]]] move_shared "std::move"(shared_ptr[vector[vector[string]]])
    cdef shared_ptr[vector[cset[int32_t]]] move "std::move"(unique_ptr[vector[cset[int32_t]]])
    cdef shared_ptr[vector[cset[int32_t]]] move_shared "std::move"(shared_ptr[vector[cset[int32_t]]])
    cdef shared_ptr[vector[cmap[string,string]]] move "std::move"(unique_ptr[vector[cmap[string,string]]])
    cdef shared_ptr[vector[cmap[string,string]]] move_shared "std::move"(shared_ptr[vector[cmap[string,string]]])
    cdef shared_ptr[vector[cAnEnum]] move "std::move"(unique_ptr[vector[cAnEnum]])
    cdef shared_ptr[vector[cAnEnum]] move_shared "std::move"(shared_ptr[vector[cAnEnum]])
    cdef shared_ptr[cmap[int32_t,double]] move "std::move"(unique_ptr[cmap[int32_t,double]])
    cdef shared_ptr[cmap[int32_t,double]] move_shared "std::move"(shared_ptr[cmap[int32_t,double]])
    cdef shared_ptr[vector[cmap[int32_t,double]]] move "std::move"(unique_ptr[vector[cmap[int32_t,double]]])
    cdef shared_ptr[vector[cmap[int32_t,double]]] move_shared "std::move"(shared_ptr[vector[cmap[int32_t,double]]])
cdef extern from "<utility>" nogil:
    pass  
    shared_ptr[cSimpleStruct] reference_shared_ptr_List__SimpleStruct "thrift::py3::reference_shared_ptr<::py3::simple::SimpleStruct>"(...)
    shared_ptr[cSimpleStruct] reference_shared_ptr_Map__string_SimpleStruct "thrift::py3::reference_shared_ptr<::py3::simple::SimpleStruct>"(...)
    shared_ptr[vector[int32_t]] reference_shared_ptr_List__List__i32 "thrift::py3::reference_shared_ptr<std::vector<int32_t>>"(...)
    shared_ptr[cmap[string,int32_t]] reference_shared_ptr_Map__string_Map__string_i32 "thrift::py3::reference_shared_ptr<std::map<std::string,int32_t>>"(...)
    shared_ptr[cset[string]] reference_shared_ptr_List__Set__string "thrift::py3::reference_shared_ptr<std::set<std::string>>"(...)
    shared_ptr[vector[cSimpleStruct]] reference_shared_ptr_Map__string_List__SimpleStruct "thrift::py3::reference_shared_ptr<std::vector<::py3::simple::SimpleStruct>>"(...)
    shared_ptr[vector[string]] reference_shared_ptr_List__List__string "thrift::py3::reference_shared_ptr<std::vector<std::string>>"(...)
    shared_ptr[cset[int32_t]] reference_shared_ptr_List__Set__i32 "thrift::py3::reference_shared_ptr<std::set<int32_t>>"(...)
    shared_ptr[cmap[string,string]] reference_shared_ptr_List__Map__string_string "thrift::py3::reference_shared_ptr<std::map<std::string,std::string>>"(...)
    shared_ptr[cmap[int32_t,double]] reference_shared_ptr_List__Map__i32_double "thrift::py3::reference_shared_ptr<std::map<int32_t,double>>"(...)
cdef extern from "<memory>" namespace "std" nogil:
    cdef shared_ptr[const vector[int16_t]] const_pointer_cast "std::const_pointer_cast<const std::vector<int16_t>>"(shared_ptr[vector[int16_t]])
    cdef shared_ptr[const vector[int32_t]] const_pointer_cast "std::const_pointer_cast<const std::vector<int32_t>>"(shared_ptr[vector[int32_t]])
    cdef shared_ptr[const vector[int64_t]] const_pointer_cast "std::const_pointer_cast<const std::vector<int64_t>>"(shared_ptr[vector[int64_t]])
    cdef shared_ptr[const vector[string]] const_pointer_cast "std::const_pointer_cast<const std::vector<std::string>>"(shared_ptr[vector[string]])
    cdef shared_ptr[const vector[cSimpleStruct]] const_pointer_cast "std::const_pointer_cast<const std::vector<::py3::simple::SimpleStruct>>"(shared_ptr[vector[cSimpleStruct]])
    cdef shared_ptr[const cset[int32_t]] const_pointer_cast "std::const_pointer_cast<const std::set<int32_t>>"(shared_ptr[cset[int32_t]])
    cdef shared_ptr[const cset[string]] const_pointer_cast "std::const_pointer_cast<const std::set<std::string>>"(shared_ptr[cset[string]])
    cdef shared_ptr[const cmap[string,string]] const_pointer_cast "std::const_pointer_cast<const std::map<std::string,std::string>>"(shared_ptr[cmap[string,string]])
    cdef shared_ptr[const cmap[string,cSimpleStruct]] const_pointer_cast "std::const_pointer_cast<const std::map<std::string,::py3::simple::SimpleStruct>>"(shared_ptr[cmap[string,cSimpleStruct]])
    cdef shared_ptr[const cmap[string,int16_t]] const_pointer_cast "std::const_pointer_cast<const std::map<std::string,int16_t>>"(shared_ptr[cmap[string,int16_t]])
    cdef shared_ptr[const vector[vector[int32_t]]] const_pointer_cast "std::const_pointer_cast<const std::vector<std::vector<int32_t>>>"(shared_ptr[vector[vector[int32_t]]])
    cdef shared_ptr[const cmap[string,int32_t]] const_pointer_cast "std::const_pointer_cast<const std::map<std::string,int32_t>>"(shared_ptr[cmap[string,int32_t]])
    cdef shared_ptr[const cmap[string,cmap[string,int32_t]]] const_pointer_cast "std::const_pointer_cast<const std::map<std::string,std::map<std::string,int32_t>>>"(shared_ptr[cmap[string,cmap[string,int32_t]]])
    cdef shared_ptr[const vector[cset[string]]] const_pointer_cast "std::const_pointer_cast<const std::vector<std::set<std::string>>>"(shared_ptr[vector[cset[string]]])
    cdef shared_ptr[const cmap[string,vector[cSimpleStruct]]] const_pointer_cast "std::const_pointer_cast<const std::map<std::string,std::vector<::py3::simple::SimpleStruct>>>"(shared_ptr[cmap[string,vector[cSimpleStruct]]])
    cdef shared_ptr[const vector[vector[string]]] const_pointer_cast "std::const_pointer_cast<const std::vector<std::vector<std::string>>>"(shared_ptr[vector[vector[string]]])
    cdef shared_ptr[const vector[cset[int32_t]]] const_pointer_cast "std::const_pointer_cast<const std::vector<std::set<int32_t>>>"(shared_ptr[vector[cset[int32_t]]])
    cdef shared_ptr[const vector[cmap[string,string]]] const_pointer_cast "std::const_pointer_cast<const std::vector<std::map<std::string,std::string>>>"(shared_ptr[vector[cmap[string,string]]])
    cdef shared_ptr[const vector[cAnEnum]] const_pointer_cast "std::const_pointer_cast<const std::vector<::py3::simple::AnEnum>>"(shared_ptr[vector[cAnEnum]])
    cdef shared_ptr[const cmap[int32_t,double]] const_pointer_cast "std::const_pointer_cast<const std::map<int32_t,double>>"(shared_ptr[cmap[int32_t,double]])
    cdef shared_ptr[const vector[cmap[int32_t,double]]] const_pointer_cast "std::const_pointer_cast<const std::vector<std::map<int32_t,double>>>"(shared_ptr[vector[cmap[int32_t,double]]])

cdef extern from "src/gen-cpp2/module_constants.h" namespace "::py3::simple":
    cdef cbool cA_BOOL "::py3::simple::module_constants::A_BOOL"
    cdef int8_t cA_BYTE "::py3::simple::module_constants::A_BYTE"
    cdef int16_t cTHE_ANSWER "::py3::simple::module_constants::THE_ANSWER"
    cdef int32_t cA_NUMBER "::py3::simple::module_constants::A_NUMBER"
    cdef int64_t cA_BIG_NUMBER "::py3::simple::module_constants::A_BIG_NUMBER"
    cdef double cA_REAL_NUMBER "::py3::simple::module_constants::A_REAL_NUMBER"
    cdef double cA_FAKE_NUMBER "::py3::simple::module_constants::A_FAKE_NUMBER"
    cdef const char* cA_WORD "::py3::simple::module_constants::A_WORD"()
    cdef string cSOME_BYTES "::py3::simple::module_constants::SOME_BYTES"()
    cdef cSimpleStruct cA_STRUCT "::py3::simple::module_constants::A_STRUCT"()
    cdef vector[string] cWORD_LIST "::py3::simple::module_constants::WORD_LIST"()
    cdef vector[cmap[int32_t,double]] cSOME_MAP "::py3::simple::module_constants::SOME_MAP"()
    cdef cset[int32_t] cDIGITS "::py3::simple::module_constants::DIGITS"()
    cdef cmap[string,cSimpleStruct] cA_CONST_MAP "::py3::simple::module_constants::A_CONST_MAP"()
