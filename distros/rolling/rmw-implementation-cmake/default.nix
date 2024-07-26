
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-rolling-rmw-implementation-cmake";
  version = "7.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw-release/archive/release/rolling/rmw_implementation_cmake/7.4.2-1.tar.gz";
    name = "7.4.2-1.tar.gz";
    sha256 = "63a041da7685911dc56a0b60845bd08f3918a29dc36af8fed9e7c5c119cbb803";
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
