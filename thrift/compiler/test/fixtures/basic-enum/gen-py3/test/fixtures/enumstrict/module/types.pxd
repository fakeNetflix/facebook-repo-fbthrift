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


cdef extern from "src/gen-cpp2/module_types.h" namespace "::test::fixtures::enumstrict":
    cdef cppclass cEmptyEnum "::test::fixtures::enumstrict::EmptyEnum":
        bint operator==(cEmptyEnum&)
        bint operator!=(cEmptyEnum&)
    cdef cppclass cMyEnum "::test::fixtures::enumstrict::MyEnum":
        bint operator==(cMyEnum&)
        bint operator!=(cMyEnum&)
    cMyEnum MyEnum__ONE "::test::fixtures::enumstrict::MyEnum::ONE"
    cMyEnum MyEnum__TWO "::test::fixtures::enumstrict::MyEnum::TWO"
    cdef cppclass cMyBigEnum "::test::fixtures::enumstrict::MyBigEnum":
        bint operator==(cMyBigEnum&)
        bint operator!=(cMyBigEnum&)
    cMyBigEnum MyBigEnum__UNKNOWN "::test::fixtures::enumstrict::MyBigEnum::UNKNOWN"
    cMyBigEnum MyBigEnum__ONE "::test::fixtures::enumstrict::MyBigEnum::ONE"
    cMyBigEnum MyBigEnum__TWO "::test::fixtures::enumstrict::MyBigEnum::TWO"
    cMyBigEnum MyBigEnum__THREE "::test::fixtures::enumstrict::MyBigEnum::THREE"
    cMyBigEnum MyBigEnum__FOUR "::test::fixtures::enumstrict::MyBigEnum::FOUR"
    cMyBigEnum MyBigEnum__FIVE "::test::fixtures::enumstrict::MyBigEnum::FIVE"
    cMyBigEnum MyBigEnum__SIX "::test::fixtures::enumstrict::MyBigEnum::SIX"
    cMyBigEnum MyBigEnum__SEVEN "::test::fixtures::enumstrict::MyBigEnum::SEVEN"
    cMyBigEnum MyBigEnum__EIGHT "::test::fixtures::enumstrict::MyBigEnum::EIGHT"
    cMyBigEnum MyBigEnum__NINE "::test::fixtures::enumstrict::MyBigEnum::NINE"
    cMyBigEnum MyBigEnum__TEN "::test::fixtures::enumstrict::MyBigEnum::TEN"
    cMyBigEnum MyBigEnum__ELEVEN "::test::fixtures::enumstrict::MyBigEnum::ELEVEN"
    cMyBigEnum MyBigEnum__TWELVE "::test::fixtures::enumstrict::MyBigEnum::TWELVE"
    cMyBigEnum MyBigEnum__THIRTEEN "::test::fixtures::enumstrict::MyBigEnum::THIRTEEN"
    cMyBigEnum MyBigEnum__FOURTEEN "::test::fixtures::enumstrict::MyBigEnum::FOURTEEN"
    cMyBigEnum MyBigEnum__FIFTEEN "::test::fixtures::enumstrict::MyBigEnum::FIFTEEN"
    cMyBigEnum MyBigEnum__SIXTEEN "::test::fixtures::enumstrict::MyBigEnum::SIXTEEN"
    cMyBigEnum MyBigEnum__SEVENTEEN "::test::fixtures::enumstrict::MyBigEnum::SEVENTEEN"
    cMyBigEnum MyBigEnum__EIGHTEEN "::test::fixtures::enumstrict::MyBigEnum::EIGHTEEN"
    cMyBigEnum MyBigEnum__NINETEEN "::test::fixtures::enumstrict::MyBigEnum::NINETEEN"




cdef class EmptyEnum(thrift.py3.types.CompiledEnum):
    pass


cdef cEmptyEnum EmptyEnum_to_cpp(EmptyEnum value)




cdef class MyEnum(thrift.py3.types.CompiledEnum):
    pass


cdef cMyEnum MyEnum_to_cpp(MyEnum value)




cdef class MyBigEnum(thrift.py3.types.CompiledEnum):
    pass


cdef cMyBigEnum MyBigEnum_to_cpp(MyBigEnum value)



cdef extern from "src/gen-cpp2/module_types_custom_protocol.h" namespace "::test::fixtures::enumstrict":
    # Forward Declaration
    cdef cppclass cMyStruct "::test::fixtures::enumstrict::MyStruct"

cdef extern from "src/gen-cpp2/module_types.h" namespace "::test::fixtures::enumstrict":
    cdef cppclass cMyStruct__isset "::test::fixtures::enumstrict::MyStruct::__isset":
        bint myEnum
        bint myBigEnum

    cdef cppclass cMyStruct "::test::fixtures::enumstrict::MyStruct":
        cMyStruct() except +
        cMyStruct(const cMyStruct&) except +
        bint operator==(cMyStruct&)
        bint operator!=(cMyStruct&)
        bint operator<(cMyStruct&)
        bint operator>(cMyStruct&)
        bint operator<=(cMyStruct&)
        bint operator>=(cMyStruct&)
        cMyEnum myEnum
        cMyBigEnum myBigEnum
        cMyStruct__isset __isset


cdef extern from "<utility>" namespace "std" nogil:
    cdef shared_ptr[cMyStruct] move(unique_ptr[cMyStruct])
    cdef shared_ptr[cMyStruct] move_shared "std::move"(shared_ptr[cMyStruct])
    cdef unique_ptr[cMyStruct] move_unique "std::move"(unique_ptr[cMyStruct])

cdef extern from "<memory>" namespace "std" nogil:
    cdef shared_ptr[const cMyStruct] const_pointer_cast "std::const_pointer_cast<const ::test::fixtures::enumstrict::MyStruct>"(shared_ptr[cMyStruct])

# Forward Definition of the cython struct
cdef class MyStruct(thrift.py3.types.Struct)


cdef class MyStruct(thrift.py3.types.Struct):
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cMyStruct] _cpp_obj

    @staticmethod
    cdef unique_ptr[cMyStruct] _make_instance(
        cMyStruct* base_instance,
        bint* __isNOTSET,
        MyEnum myEnum,
        MyBigEnum myBigEnum
    ) except *

    @staticmethod
    cdef create(shared_ptr[cMyStruct])





cdef extern from "src/gen-cpp2/module_constants.h" namespace "::test::fixtures::enumstrict":
    cdef cMyEnum ckOne "::test::fixtures::enumstrict::module_constants::kOne"()
