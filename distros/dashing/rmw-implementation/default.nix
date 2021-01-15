
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, poco, poco-vendor, rcutils, rmw, rmw-connext-cpp, rmw-fastrtps-cpp, rmw-implementation-cmake, rmw-opensplice-cpp }:
buildRosPackage {
  pname = "ros-dashing-rmw-implementation";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_implementation-release/archive/release/dashing/rmw_implementation/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "69859dfd18ad79681ce7e76be437cedc989c689002bace7c1febc8b864d5dbc8";
  };

  buildType = "ament_cmake";
  buildInputs = [ rcutils rmw rmw-connext-cpp rmw-fastrtps-cpp rmw-opensplice-cpp ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ poco poco-vendor rmw-implementation-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The decision which ROS middleware implementation should be used for C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
