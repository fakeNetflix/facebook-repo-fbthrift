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





cdef extern from "src/gen-cpp2/module_types_custom_protocol.h" namespace "::cpp2":
    # Forward Declaration
    cdef cppclass cComplexUnion "::cpp2::ComplexUnion"
    # Forward Declaration
    cdef cppclass cListUnion "::cpp2::ListUnion"
    # Forward Declaration
    cdef cppclass cDataUnion "::cpp2::DataUnion"
    # Forward Declaration
    cdef cppclass cVal "::cpp2::Val"
    # Forward Declaration
    cdef cppclass cValUnion "::cpp2::ValUnion"
    # Forward Declaration
    cdef cppclass cVirtualComplexUnion "::cpp2::VirtualComplexUnion"
    # Forward Declaration
    cdef cppclass cNonCopyableStruct "::cpp2::NonCopyableStruct"
    # Forward Declaration
    cdef cppclass cNonCopyableUnion "::cpp2::NonCopyableUnion"

cdef extern from "src/gen-cpp2/module_types.h" namespace "::cpp2":
    cdef enum cComplexUnion__type "::cpp2::ComplexUnion::Type":
        cComplexUnion__type___EMPTY__ "::cpp2::ComplexUnion::Type::__EMPTY__",
        cComplexUnion__type_intValue "::cpp2::ComplexUnion::Type::intValue",
        cComplexUnion__type_stringValue "::cpp2::ComplexUnion::Type::stringValue",
        cComplexUnion__type_intListValue "::cpp2::ComplexUnion::Type::intListValue",
        cComplexUnion__type_stringListValue "::cpp2::ComplexUnion::Type::stringListValue",
        cComplexUnion__type_typedefValue "::cpp2::ComplexUnion::Type::typedefValue",
        cComplexUnion__type_stringRef "::cpp2::ComplexUnion::Type::stringRef",

    cdef cppclass cComplexUnion "::cpp2::ComplexUnion":
        cComplexUnion() except +
        cComplexUnion(const cComplexUnion&) except +
        bint operator==(cComplexUnion&)
        bint operator!=(cComplexUnion&)
        bint operator<(cComplexUnion&)
        bint operator>(cComplexUnion&)
        bint operator<=(cComplexUnion&)
        bint operator>=(cComplexUnion&)
        cComplexUnion__type getType() const
        const int64_t& get_intValue() const
        int64_t& set_intValue(const int64_t&)
        const string& get_stringValue() const
        string& set_stringValue(const string&)
        const vector[int64_t]& get_intListValue() const
        vector[int64_t]& set_intListValue(const vector[int64_t]&)
        const vector[string]& get_stringListValue() const
        vector[string]& set_stringListValue(const vector[string]&)
        const cmap[int16_t,string]& get_typedefValue() const
        cmap[int16_t,string]& set_typedefValue(const cmap[int16_t,string]&)
        const unique_ptr[string]& get_stringRef() const
        unique_ptr[string]& set_stringRef(const string&)

    cdef enum cListUnion__type "::cpp2::ListUnion::Type":
        cListUnion__type___EMPTY__ "::cpp2::ListUnion::Type::__EMPTY__",
        cListUnion__type_intListValue "::cpp2::ListUnion::Type::intListValue",
        cListUnion__type_stringListValue "::cpp2::ListUnion::Type::stringListValue",

    cdef cppclass cListUnion "::cpp2::ListUnion":
        cListUnion() except +
        cListUnion(const cListUnion&) except +
        bint operator==(cListUnion&)
        bint operator!=(cListUnion&)
        bint operator<(cListUnion&)
        bint operator>(cListUnion&)
        bint operator<=(cListUnion&)
        bint operator>=(cListUnion&)
        cListUnion__type getType() const
        const vector[int64_t]& get_intListValue() const
        vector[int64_t]& set_intListValue(const vector[int64_t]&)
        const vector[string]& get_stringListValue() const
        vector[string]& set_stringListValue(const vector[string]&)

    cdef enum cDataUnion__type "::cpp2::DataUnion::Type":
        cDataUnion__type___EMPTY__ "::cpp2::DataUnion::Type::__EMPTY__",
        cDataUnion__type_binaryData "::cpp2::DataUnion::Type::binaryData",
        cDataUnion__type_stringData "::cpp2::DataUnion::Type::stringData",

    cdef cppclass cDataUnion "::cpp2::DataUnion":
        cDataUnion() except +
        cDataUnion(const cDataUnion&) except +
        bint operator==(cDataUnion&)
        bint operator!=(cDataUnion&)
        bint operator<(cDataUnion&)
        bint operator>(cDataUnion&)
        bint operator<=(cDataUnion&)
        bint operator>=(cDataUnion&)
        cDataUnion__type getType() const
        const string& get_binaryData() const
        string& set_binaryData(const string&)
        const string& get_stringData() const
        string& set_stringData(const string&)

    cdef cppclass cVal__isset "::cpp2::Val::__isset":
        bint strVal
        bint intVal
        bint typedefValue

    cdef cppclass cVal "::cpp2::Val":
        cVal() except +
        cVal(const cVal&) except +
        bint operator==(cVal&)
        bint operator!=(cVal&)
        bint operator<(cVal&)
        bint operator>(cVal&)
        bint operator<=(cVal&)
        bint operator>=(cVal&)
        string strVal
        int32_t intVal
        cmap[int16_t,string] typedefValue
        cVal__isset __isset

    cdef enum cValUnion__type "::cpp2::ValUnion::Type":
        cValUnion__type___EMPTY__ "::cpp2::ValUnion::Type::__EMPTY__",
        cValUnion__type_v1 "::cpp2::ValUnion::Type::v1",
        cValUnion__type_v2 "::cpp2::ValUnion::Type::v2",

    cdef cppclass cValUnion "::cpp2::ValUnion":
        cValUnion() except +
        cValUnion(const cValUnion&) except +
        bint operator==(cValUnion&)
        bint operator!=(cValUnion&)
        bint operator<(cValUnion&)
        bint operator>(cValUnion&)
        bint operator<=(cValUnion&)
        bint operator>=(cValUnion&)
        cValUnion__type getType() const
        const cVal& get_v1() const
        cVal& set_v1(const cVal&)
        const cVal& get_v2() const
        cVal& set_v2(const cVal&)

    cdef enum cVirtualComplexUnion__type "::cpp2::VirtualComplexUnion::Type":
        cVirtualComplexUnion__type___EMPTY__ "::cpp2::VirtualComplexUnion::Type::__EMPTY__",
        cVirtualComplexUnion__type_thingOne "::cpp2::VirtualComplexUnion::Type::thingOne",
        cVirtualComplexUnion__type_thingTwo "::cpp2::VirtualComplexUnion::Type::thingTwo",

    cdef cppclass cVirtualComplexUnion "::cpp2::VirtualComplexUnion":
        cVirtualComplexUnion() except +
        cVirtualComplexUnion(const cVirtualComplexUnion&) except +
        bint operator==(cVirtualComplexUnion&)
        bint operator!=(cVirtualComplexUnion&)
        bint operator<(cVirtualComplexUnion&)
        bint operator>(cVirtualComplexUnion&)
        bint operator<=(cVirtualComplexUnion&)
        bint operator>=(cVirtualComplexUnion&)
        cVirtualComplexUnion__type getType() const
        const string& get_thingOne() const
        string& set_thingOne(const string&)
        const string& get_thingTwo() const
        string& set_thingTwo(const string&)

    cdef cppclass cNonCopyableStruct__isset "::cpp2::NonCopyableStruct::__isset":
        bint num

    cdef cppclass cNonCopyableStruct "::cpp2::NonCopyableStruct":
        cNonCopyableStruct() except +
        cNonCopyableStruct(const cNonCopyableStruct&) except +
        bint operator==(cNonCopyableStruct&)
        bint operator!=(cNonCopyableStruct&)
        bint operator<(cNonCopyableStruct&)
        bint operator>(cNonCopyableStruct&)
        bint operator<=(cNonCopyableStruct&)
        bint operator>=(cNonCopyableStruct&)
        int64_t num
        cNonCopyableStruct__isset __isset

    cdef enum cNonCopyableUnion__type "::cpp2::NonCopyableUnion::Type":
        cNonCopyableUnion__type___EMPTY__ "::cpp2::NonCopyableUnion::Type::__EMPTY__",
        cNonCopyableUnion__type_s "::cpp2::NonCopyableUnion::Type::s",

    cdef cppclass cNonCopyableUnion "::cpp2::NonCopyableUnion":
        cNonCopyableUnion() except +
        cNonCopyableUnion(const cNonCopyableUnion&) except +
        bint operator==(cNonCopyableUnion&)
        bint operator!=(cNonCopyableUnion&)
        bint operator<(cNonCopyableUnion&)
        bint operator>(cNonCopyableUnion&)
        bint operator<=(cNonCopyableUnion&)
        bint operator>=(cNonCopyableUnion&)
        cNonCopyableUnion__type getType() const
        const cNonCopyableStruct& get_s() const
        cNonCopyableStruct& set_s(const cNonCopyableStruct&)

    cdef shared_ptr[vector[int64_t]] reference_shared_ptr_intListValue "thrift::py3::reference_shared_ptr<std::vector<int64_t>>"(shared_ptr[cComplexUnion]&, vector[int64_t]&)
    cdef shared_ptr[vector[string]] reference_shared_ptr_stringListValue "thrift::py3::reference_shared_ptr<std::vector<std::string>>"(shared_ptr[cComplexUnion]&, vector[string]&)
    cdef shared_ptr[cmap[int16_t,string]] reference_shared_ptr_typedefValue "thrift::py3::reference_shared_ptr<std::map<int16_t,std::string>>"(shared_ptr[cComplexUnion]&, cmap[int16_t,string]&)
    cdef shared_ptr[string] reference_shared_ptr_stringRef "thrift::py3::reference_shared_ptr<std::string>"(shared_ptr[cComplexUnion]&, string&)
    cdef shared_ptr[vector[int64_t]] reference_shared_ptr_intListValue "thrift::py3::reference_shared_ptr<std::vector<int64_t>>"(shared_ptr[cListUnion]&, vector[int64_t]&)
    cdef shared_ptr[vector[string]] reference_shared_ptr_stringListValue "thrift::py3::reference_shared_ptr<std::vector<std::string>>"(shared_ptr[cListUnion]&, vector[string]&)
    cdef shared_ptr[cmap[int16_t,string]] reference_shared_ptr_typedefValue "thrift::py3::reference_shared_ptr<std::map<int16_t,std::string>>"(shared_ptr[cVal]&, cmap[int16_t,string]&)
    cdef shared_ptr[cVal] reference_shared_ptr_v1 "thrift::py3::reference_shared_ptr<::cpp2::Val>"(shared_ptr[cValUnion]&, cVal&)
    cdef shared_ptr[cVal] reference_shared_ptr_v2 "thrift::py3::reference_shared_ptr<::cpp2::Val>"(shared_ptr[cValUnion]&, cVal&)
    cdef shared_ptr[cNonCopyableStruct] reference_shared_ptr_s "thrift::py3::reference_shared_ptr<::cpp2::NonCopyableStruct>"(shared_ptr[cNonCopyableUnion]&, cNonCopyableStruct&)

cdef extern from "<utility>" namespace "std" nogil:
    cdef shared_ptr[cComplexUnion] move(unique_ptr[cComplexUnion])
    cdef shared_ptr[cComplexUnion] move_shared "std::move"(shared_ptr[cComplexUnion])
    cdef unique_ptr[cComplexUnion] move_unique "std::move"(unique_ptr[cComplexUnion])
    cdef shared_ptr[cListUnion] move(unique_ptr[cListUnion])
    cdef shared_ptr[cListUnion] move_shared "std::move"(shared_ptr[cListUnion])
    cdef unique_ptr[cListUnion] move_unique "std::move"(unique_ptr[cListUnion])
    cdef shared_ptr[cDataUnion] move(unique_ptr[cDataUnion])
    cdef shared_ptr[cDataUnion] move_shared "std::move"(shared_ptr[cDataUnion])
    cdef unique_ptr[cDataUnion] move_unique "std::move"(unique_ptr[cDataUnion])
    cdef shared_ptr[cVal] move(unique_ptr[cVal])
    cdef shared_ptr[cVal] move_shared "std::move"(shared_ptr[cVal])
    cdef unique_ptr[cVal] move_unique "std::move"(unique_ptr[cVal])
    cdef shared_ptr[cValUnion] move(unique_ptr[cValUnion])
    cdef shared_ptr[cValUnion] move_shared "std::move"(shared_ptr[cValUnion])
    cdef unique_ptr[cValUnion] move_unique "std::move"(unique_ptr[cValUnion])
    cdef shared_ptr[cVirtualComplexUnion] move(unique_ptr[cVirtualComplexUnion])
    cdef shared_ptr[cVirtualComplexUnion] move_shared "std::move"(shared_ptr[cVirtualComplexUnion])
    cdef unique_ptr[cVirtualComplexUnion] move_unique "std::move"(unique_ptr[cVirtualComplexUnion])
    cdef shared_ptr[cNonCopyableStruct] move(unique_ptr[cNonCopyableStruct])
    cdef shared_ptr[cNonCopyableStruct] move_shared "std::move"(shared_ptr[cNonCopyableStruct])
    cdef unique_ptr[cNonCopyableStruct] move_unique "std::move"(unique_ptr[cNonCopyableStruct])
    cdef shared_ptr[cNonCopyableUnion] move(unique_ptr[cNonCopyableUnion])
    cdef shared_ptr[cNonCopyableUnion] move_shared "std::move"(shared_ptr[cNonCopyableUnion])
    cdef unique_ptr[cNonCopyableUnion] move_unique "std::move"(unique_ptr[cNonCopyableUnion])

cdef extern from "<memory>" namespace "std" nogil:
    cdef shared_ptr[const cComplexUnion] const_pointer_cast "std::const_pointer_cast<const ::cpp2::ComplexUnion>"(shared_ptr[cComplexUnion])
    cdef shared_ptr[const cListUnion] const_pointer_cast "std::const_pointer_cast<const ::cpp2::ListUnion>"(shared_ptr[cListUnion])
    cdef shared_ptr[const cDataUnion] const_pointer_cast "std::const_pointer_cast<const ::cpp2::DataUnion>"(shared_ptr[cDataUnion])
    cdef shared_ptr[const cVal] const_pointer_cast "std::const_pointer_cast<const ::cpp2::Val>"(shared_ptr[cVal])
    cdef shared_ptr[const cValUnion] const_pointer_cast "std::const_pointer_cast<const ::cpp2::ValUnion>"(shared_ptr[cValUnion])
    cdef shared_ptr[const cVirtualComplexUnion] const_pointer_cast "std::const_pointer_cast<const ::cpp2::VirtualComplexUnion>"(shared_ptr[cVirtualComplexUnion])
    cdef shared_ptr[const cNonCopyableStruct] const_pointer_cast "std::const_pointer_cast<const ::cpp2::NonCopyableStruct>"(shared_ptr[cNonCopyableStruct])
    cdef shared_ptr[const cNonCopyableUnion] const_pointer_cast "std::const_pointer_cast<const ::cpp2::NonCopyableUnion>"(shared_ptr[cNonCopyableUnion])

cdef class __ComplexUnionType(thrift.py3.types.CompiledEnum):
    pass


# Forward Definition of the cython struct
cdef class ComplexUnion(thrift.py3.types.Union)


cdef class ComplexUnion(thrift.py3.types.Union):
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cComplexUnion] _cpp_obj
    cdef readonly __ComplexUnionType type
    cdef readonly object value
    cdef _load_cache(ComplexUnion self)

    @staticmethod
    cdef unique_ptr[cComplexUnion] _make_instance(
        cComplexUnion* base_instance,
        object intValue,
        str stringValue,
        object intListValue,
        object stringListValue,
        object typedefValue,
        str stringRef
    ) except *

    @staticmethod
    cdef create(shared_ptr[cComplexUnion])

cdef class __ListUnionType(thrift.py3.types.CompiledEnum):
    pass


# Forward Definition of the cython struct
cdef class ListUnion(thrift.py3.types.Union)


cdef class ListUnion(thrift.py3.types.Union):
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cListUnion] _cpp_obj
    cdef readonly __ListUnionType type
    cdef readonly object value
    cdef _load_cache(ListUnion self)

    @staticmethod
    cdef unique_ptr[cListUnion] _make_instance(
        cListUnion* base_instance,
        object intListValue,
        object stringListValue
    ) except *

    @staticmethod
    cdef create(shared_ptr[cListUnion])

cdef class __DataUnionType(thrift.py3.types.CompiledEnum):
    pass


# Forward Definition of the cython struct
cdef class DataUnion(thrift.py3.types.Union)


cdef class DataUnion(thrift.py3.types.Union):
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cDataUnion] _cpp_obj
    cdef readonly __DataUnionType type
    cdef readonly object value
    cdef _load_cache(DataUnion self)

    @staticmethod
    cdef unique_ptr[cDataUnion] _make_instance(
        cDataUnion* base_instance,
        bytes binaryData,
        str stringData
    ) except *

    @staticmethod
    cdef create(shared_ptr[cDataUnion])

# Forward Definition of the cython struct
cdef class Val(thrift.py3.types.Struct)


cdef class Val(thrift.py3.types.Struct):
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cVal] _cpp_obj
    cdef Map__i16_string __field_typedefValue

    @staticmethod
    cdef unique_ptr[cVal] _make_instance(
        cVal* base_instance,
        bint* __isNOTSET,
        str strVal,
        object intVal,
        object typedefValue
    ) except *

    @staticmethod
    cdef create(shared_ptr[cVal])

cdef class __ValUnionType(thrift.py3.types.CompiledEnum):
    pass


# Forward Definition of the cython struct
cdef class ValUnion(thrift.py3.types.Union)


cdef class ValUnion(thrift.py3.types.Union):
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cValUnion] _cpp_obj
    cdef readonly __ValUnionType type
    cdef readonly object value
    cdef _load_cache(ValUnion self)

    @staticmethod
    cdef unique_ptr[cValUnion] _make_instance(
        cValUnion* base_instance,
        Val v1,
        Val v2
    ) except *

    @staticmethod
    cdef create(shared_ptr[cValUnion])

cdef class __VirtualComplexUnionType(thrift.py3.types.CompiledEnum):
    pass


# Forward Definition of the cython struct
cdef class VirtualComplexUnion(thrift.py3.types.Union)


cdef class VirtualComplexUnion(thrift.py3.types.Union):
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cVirtualComplexUnion] _cpp_obj
    cdef readonly __VirtualComplexUnionType type
    cdef readonly object value
    cdef _load_cache(VirtualComplexUnion self)

    @staticmethod
    cdef unique_ptr[cVirtualComplexUnion] _make_instance(
        cVirtualComplexUnion* base_instance,
        str thingOne,
        str thingTwo
    ) except *

    @staticmethod
    cdef create(shared_ptr[cVirtualComplexUnion])

# Forward Definition of the cython struct
cdef class NonCopyableStruct(thrift.py3.types.Struct)


cdef class NonCopyableStruct(thrift.py3.types.Struct):
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cNonCopyableStruct] _cpp_obj

    @staticmethod
    cdef unique_ptr[cNonCopyableStruct] _make_instance(
        cNonCopyableStruct* base_instance,
        bint* __isNOTSET,
        object num
    ) except *

    @staticmethod
    cdef create(shared_ptr[cNonCopyableStruct])

cdef class __NonCopyableUnionType(thrift.py3.types.CompiledEnum):
    pass


# Forward Definition of the cython struct
cdef class NonCopyableUnion(thrift.py3.types.Union)


cdef class NonCopyableUnion(thrift.py3.types.Union):
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cNonCopyableUnion] _cpp_obj
    cdef readonly __NonCopyableUnionType type
    cdef readonly object value
    cdef _load_cache(NonCopyableUnion self)

    @staticmethod
    cdef unique_ptr[cNonCopyableUnion] _make_instance(
        cNonCopyableUnion* base_instance,
        NonCopyableStruct s
    ) except *

    @staticmethod
    cdef create(shared_ptr[cNonCopyableUnion])


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

cdef class Map__i16_string:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cmap[int16_t,string]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[cmap[int16_t,string]])
    @staticmethod
    cdef shared_ptr[cmap[int16_t,string]] _make_instance(object items) except *

cdef extern from "<utility>" namespace "std" nogil:
    cdef shared_ptr[vector[int64_t]] move "std::move"(unique_ptr[vector[int64_t]])
    cdef shared_ptr[vector[int64_t]] move_shared "std::move"(shared_ptr[vector[int64_t]])
    cdef shared_ptr[vector[string]] move "std::move"(unique_ptr[vector[string]])
    cdef shared_ptr[vector[string]] move_shared "std::move"(shared_ptr[vector[string]])
    cdef shared_ptr[cmap[int16_t,string]] move "std::move"(unique_ptr[cmap[int16_t,string]])
    cdef shared_ptr[cmap[int16_t,string]] move_shared "std::move"(shared_ptr[cmap[int16_t,string]])
cdef extern from "<utility>" nogil:
    pass  
cdef extern from "<memory>" namespace "std" nogil:
    cdef shared_ptr[const vector[int64_t]] const_pointer_cast "std::const_pointer_cast<const std::vector<int64_t>>"(shared_ptr[vector[int64_t]])
    cdef shared_ptr[const vector[string]] const_pointer_cast "std::const_pointer_cast<const std::vector<std::string>>"(shared_ptr[vector[string]])
    cdef shared_ptr[const cmap[int16_t,string]] const_pointer_cast "std::const_pointer_cast<const std::map<int16_t,std::string>>"(shared_ptr[cmap[int16_t,string]])

