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
exception FooEx { }

service PubSubStreamingService {
  stream<i32> returnstream(1: i32 i32_from, 2: i32 i32_to);
  stream<i32> streamthrows(1: i32 foo) stream throws (1: FooEx e);
  stream<i32> boththrows(1: i32 foo) throws(1: FooEx e)
    stream throws (1: FooEx e);
  i32, stream<i32> responseandstreamthrows(1: i32 foo) throws(1: FooEx e)
    stream throws (1: FooEx e);
}
