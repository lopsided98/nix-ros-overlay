
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, ament-cmake, ament-lint-common }:
buildRosPackage {
  pname = "ros-crystal-rmw-implementation-cmake";
  version = "0.6.1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rmw-release/archive/release/crystal/rmw_implementation_cmake/0.6.1-0.tar.gz;
    sha256 = "c6dcb8d1d0f673d63c8c2052c684efc7d91a714e6024ebc1e4805915d16b7d9c";
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
