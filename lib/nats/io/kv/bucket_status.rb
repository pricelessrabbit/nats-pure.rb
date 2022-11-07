# Copyright 2021 The NATS Authors
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

module NATS
  class KeyValue
    class BucketStatus
      attr_reader :bucket

      def initialize(info, bucket)
        @nfo = info
        @bucket = bucket
      end

      def values
        @nfo.state.messages
      end

      def history
        @nfo.config.max_msgs_per_subject
      end

      def ttl
        @nfo.config.max_age / ::NATS::NANOSECONDS
      end
    end
  end
end