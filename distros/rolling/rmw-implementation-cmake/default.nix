
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-rolling-rmw-implementation-cmake";
  version = "6.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw-release/archive/release/rolling/rmw_implementation_cmake/6.4.0-1.tar.gz";
    name = "6.4.0-1.tar.gz";
    sha256 = "896f1b8d37525e769bf7b47559ec65100581e73520c2393cfa5972f1fb900002";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''CMake functions which can discover and enumerate available implementations.'';
    license = with lib.licenses; [ asl20 ];
  };
}
