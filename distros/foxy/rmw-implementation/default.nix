
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rcpputils, rcutils, rmw, rmw-connext-cpp, rmw-cyclonedds-cpp, rmw-fastrtps-cpp, rmw-implementation-cmake }:
buildRosPackage {
  pname = "ros-foxy-rmw-implementation";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_implementation-release/archive/release/foxy/rmw_implementation/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "dd5165ddb35d4ed682b1e2a1a8a21016cba16b16b411cf3cbb53dee5af66690f";
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
