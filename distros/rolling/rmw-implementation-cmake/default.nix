
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-rolling-rmw-implementation-cmake";
  version = "7.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw-release/archive/release/rolling/rmw_implementation_cmake/7.3.0-2.tar.gz";
    name = "7.3.0-2.tar.gz";
    sha256 = "07a84fbdd783a72d2a226f665c0899a5d4ea29d9be1dc541d6aa4059b0111b6c";
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
