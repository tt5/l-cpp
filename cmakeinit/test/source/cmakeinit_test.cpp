#include "lib.hpp"

auto main() -> int
{
  auto const lib = library {};

  return lib.name == "cmakeinit" ? 0 : 1;
}
