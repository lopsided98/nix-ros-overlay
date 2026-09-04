
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-lyrical-rmw-implementation-cmake";
  version = "7.10.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw-release/archive/release/lyrical/rmw_implementation_cmake/7.10.2-3.tar.gz";
    name = "7.10.2-3.tar.gz";
    sha256 = "d5fba9452e9ece9a2624c755038213bf5d030dfb5668751b9b6678b474a9193b";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "CMake functions which can discover and enumerate available implementations.";
    license = with lib.licenses; [ asl20 ];
  };
}
