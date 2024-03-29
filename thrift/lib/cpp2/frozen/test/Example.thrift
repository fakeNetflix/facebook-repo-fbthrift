/*
 * Copyright 2019-present Facebook, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
include "thrift/lib/cpp2/frozen/test/Helper.thrift"

namespace cpp2 apache.thrift.test

cpp_include "<unordered_set>"
cpp_include "thrift/lib/cpp2/frozen/VectorAssociative.h"

enum Gender {
  Male = 0,
  Female = 1,
  Other = 2,
}

struct Nesting {
  1: Helper.Ratio a,
  2: Helper.Ratio b,
}

struct Pet1 {
  1: string name,
  2: optional i32 age
  3: optional bool vegan,
}

struct Person1 {
  5: optional i32 age,
  2: float height, // different
  1: string name,
  4: list<Pet1> pets,
  6: Gender gender = Male,
}

struct Pet2 {
  3: optional float weight,
  1: string name,
}

struct Person2 {
  1: string name,
  3: float weight, // different
  4: list<Pet2> pets,
  5: optional i32 age,
}

struct Tiny {
  1: required string a,
  2: string b,
  3: string c,
  4: string d,
}

struct Place {
  1: string name,
  2: map<i32, i32> popularityByHour,
}

struct PlaceTest {
  1: map<i64, Place> places,
}

struct EveryLayout {
  1: bool aBool,
  2: i32 aInt,
  3: list<i32> aList,
  4: set<i32> aSet,
  5: set<i32>
    (cpp.template = "std::unordered_set")
    aHashSet,
  6: map<i32, i32> aMap,
  7: map<i32, i32> (cpp.template = 'std::unordered_map') aHashMap,
  8: optional i32 optInt, // optional layout
  9: float aFloat, // trivial layout
  10: optional map<i32, i32> optMap,
}

struct VectorTest {
  1: list<i32> aList;
  2: set<i32>
       (cpp.template = "apache::thrift::frozen::VectorAsSet")
       aSet;
  3: map<i32, i32>
       (cpp.template = "apache::thrift::frozen::VectorAsMap")
       aMap;
  4: set<i32>
       (cpp.template = "apache::thrift::frozen::VectorAsHashSet")
       aHashSet;
  5: map<i32, i32> (cpp.template = "apache::thrift::frozen::VectorAsHashMap")
       aHashMap;
  6: list<i32> (cpp.template = "folly::fbvector") fbVector;
}
