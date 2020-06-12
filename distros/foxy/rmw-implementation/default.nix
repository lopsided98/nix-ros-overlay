
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rcpputils, rcutils, rmw, rmw-connext-cpp, rmw-cyclonedds-cpp, rmw-fastrtps-cpp, rmw-implementation-cmake }:
buildRosPackage {
  pname = "ros-foxy-rmw-implementation";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_implementation-release/archive/release/foxy/rmw_implementation/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "1754447464844d994e8dda2f2577ec923e69d533b84b59a350cfc53af7d3ebea";
  };

  buildType = "ament_cmake";
  buildInputs = [ rmw rmw-connext-cpp rmw-cyclonedds-cpp rmw-fastrtps-cpp ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rcpputils rcutils rmw-implementation-cmake ];
  nativeBuildInputs = [ ament-cmake rmw-implementation-cmake ];

  meta = {
    description = ''The decision which ROS middleware implementation should be used for C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
