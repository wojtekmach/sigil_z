# SigilZ

Handles the ~Z sigil for UTC datetimes.

## Examples

```elixir
iex> import SigilZ
iex> ~Z[2015-01-13 13:00:07]
~Z[2015-01-13 13:00:07]
```

## Installation

```elixir
def deps do
  [
    {:sigil_z, "~> 0.1"}
  ]
end
```

## License

Copyright 2018 Wojciech Mach

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
