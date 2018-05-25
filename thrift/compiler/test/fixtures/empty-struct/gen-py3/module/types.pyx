#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#

from libcpp.memory cimport shared_ptr, make_shared, unique_ptr, make_unique
from libcpp.string cimport string
from libcpp cimport bool as cbool
from libcpp.iterator cimport inserter as cinserter
from cpython cimport bool as pbool
from libc.stdint cimport int8_t, int16_t, int32_t, int64_t, uint32_t
from cython.operator cimport dereference as deref, preincrement as inc
import thrift.py3.types
cimport thrift.py3.types
cimport thrift.py3.exceptions
from thrift.py3.types import NOTSET as __NOTSET
from thrift.py3.types cimport translate_cpp_enum_to_python
cimport thrift.py3.std_libcpp as std_libcpp
from thrift.py3.serializer cimport IOBuf as __IOBuf
from thrift.py3.serializer import Protocol
cimport thrift.py3.serializer as serializer
from thrift.py3.serializer import deserialize, serialize
from folly.optional cimport cOptional

import sys
import itertools
from collections import Sequence, Set, Mapping, Iterable
import enum as __enum
import warnings
import builtins as _builtins




cdef cEmpty _Empty_defaults = cEmpty()

cdef class Empty(thrift.py3.types.Struct):

    def __init__(
        Empty self, *
    ):
        self._cpp_obj = move(Empty._make_instance(
          NULL,
        ))

    def __call__(
        Empty self
    ):
        changes = any((        ))

        if not changes:
            return self
        inst = <Empty>Empty.__new__(Empty)
        inst._cpp_obj = move(Empty._make_instance(
          self._cpp_obj.get(),
        ))
        return inst

    @staticmethod
    cdef unique_ptr[cEmpty] _make_instance(
        cEmpty* base_instance
    ) except *:
        cdef unique_ptr[cEmpty] c_inst
        if base_instance:
            c_inst = make_unique[cEmpty](deref(base_instance))
        else:
            c_inst = make_unique[cEmpty]()

        if base_instance:
            # Convert None's to default value. (or unset)
            pass
        # in C++ you don't have to call move(), but this doesn't translate
        # into a C++ return statement, so you do here
        return move_unique(c_inst)

    def __iter__(self):
        return iter(())

    def __bool__(self):
        return True

    @staticmethod
    cdef create(shared_ptr[cEmpty] cpp_obj):
        inst = <Empty>Empty.__new__(Empty)
        inst._cpp_obj = cpp_obj
        return inst


    def __hash__(Empty self):
        if not self.__hash:
            self.__hash = hash((
            type(self)   # Hash the class there are no fields
            ))
        return self.__hash

    def __repr__(Empty self):
        return f'Empty()'
    def __richcmp__(self, other, op):
        cdef int cop = op
        if cop not in (2, 3):
            raise TypeError("unorderable types: {}, {}".format(self, other))
        if not (
                isinstance(self, Empty) and
                isinstance(other, Empty)):
            if cop == 2:  # different types are never equal
                return False
            else:         # different types are always notequal
                return True

        cdef cEmpty cself = deref((<Empty>self)._cpp_obj)
        cdef cEmpty cother = deref((<Empty>other)._cpp_obj)
        cdef cbool cmp = cself == cother
        if cop == 2:
            return cmp
        return not cmp

    cdef bytes _serialize(Empty self, proto):
        cdef string c_str
        if proto is Protocol.COMPACT:
            serializer.CompactSerialize[cEmpty](deref(self._cpp_obj.get()), &c_str)
        elif proto is Protocol.BINARY:
            serializer.BinarySerialize[cEmpty](deref(self._cpp_obj.get()), &c_str)
        elif proto is Protocol.JSON:
            serializer.JSONSerialize[cEmpty](deref(self._cpp_obj.get()), &c_str)
        return <bytes> c_str

    cdef uint32_t _deserialize(Empty self, const __IOBuf* buf, proto) except? 0:
        cdef uint32_t needed
        self._cpp_obj = make_shared[cEmpty]()
        if proto is Protocol.COMPACT:
            needed = serializer.CompactDeserialize[cEmpty](buf, deref(self._cpp_obj.get()))
        elif proto is Protocol.BINARY:
            needed = serializer.BinaryDeserialize[cEmpty](buf, deref(self._cpp_obj.get()))
        elif proto is Protocol.JSON:
            needed = serializer.JSONDeserialize[cEmpty](buf, deref(self._cpp_obj.get()))
        return needed

    def __reduce__(self):
        return (deserialize, (Empty, serialize(self)))


class __NadaType(__enum.Enum):
    EMPTY = <int>cNada__type___EMPTY__


cdef class Nada(thrift.py3.types.Union):
    Type = __NadaType

    def __init__(
        self, *
    ):
        self._cpp_obj = move(Nada._make_instance(
          NULL,
        ))
        self._load_cache()

    @staticmethod
    def fromValue(value):
        if value is None:
            return Nada()
        raise ValueError(f"Unable to derive correct union field for value: {value}")

    @staticmethod
    cdef unique_ptr[cNada] _make_instance(
        cNada* base_instance
    ) except *:
        cdef unique_ptr[cNada] c_inst = make_unique[cNada]()
        cdef bint any_set = False
        # in C++ you don't have to call move(), but this doesn't translate
        # into a C++ return statement, so you do here
        return move_unique(c_inst)

    def __bool__(self):
        return self.type != Nada.Type.EMPTY

    @staticmethod
    cdef create(shared_ptr[cNada] cpp_obj):
        inst = <Nada>Nada.__new__(Nada)
        inst._cpp_obj = cpp_obj
        inst._load_cache()
        return inst


    def __hash__(Nada self):
        if not self.__hash:
            self.__hash = hash((
                self.type,
                self.value,
            ))
        return self.__hash

    def __repr__(Nada self):
        return f'Nada(type={self.type.name}, value={self.value!r})'

    cdef _load_cache(Nada self):
        self.type = Nada.Type(<int>(deref(self._cpp_obj).getType()))
        if self.type == Nada.Type.EMPTY:
            self.value = None

    def get_type(Nada self):
        return self.type

    def __richcmp__(self, other, op):
        cdef int cop = op
        if cop not in (2, 3):
            raise TypeError("unorderable types: {}, {}".format(self, other))
        if not (
                isinstance(self, Nada) and
                isinstance(other, Nada)):
            if cop == 2:  # different types are never equal
                return False
            else:         # different types are always notequal
                return True

        cdef cNada cself = deref((<Nada>self)._cpp_obj)
        cdef cNada cother = deref((<Nada>other)._cpp_obj)
        cdef cbool cmp = cself == cother
        if cop == 2:
            return cmp
        return not cmp

    cdef bytes _serialize(Nada self, proto):
        cdef string c_str
        if proto is Protocol.COMPACT:
            serializer.CompactSerialize[cNada](deref(self._cpp_obj.get()), &c_str)
        elif proto is Protocol.BINARY:
            serializer.BinarySerialize[cNada](deref(self._cpp_obj.get()), &c_str)
        elif proto is Protocol.JSON:
            serializer.JSONSerialize[cNada](deref(self._cpp_obj.get()), &c_str)
        return <bytes> c_str

    cdef uint32_t _deserialize(Nada self, const __IOBuf* buf, proto) except? 0:
        cdef uint32_t needed
        self._cpp_obj = make_shared[cNada]()
        if proto is Protocol.COMPACT:
            needed = serializer.CompactDeserialize[cNada](buf, deref(self._cpp_obj.get()))
        elif proto is Protocol.BINARY:
            needed = serializer.BinaryDeserialize[cNada](buf, deref(self._cpp_obj.get()))
        elif proto is Protocol.JSON:
            needed = serializer.JSONDeserialize[cNada](buf, deref(self._cpp_obj.get()))
        # force a cache reload since the underlying data's changed
        self._load_cache()
        return needed

    def __reduce__(self):
        return (deserialize, (Nada, serialize(self)))


