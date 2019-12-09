
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rcutils, rmw-fastrtps-cpp, rmw-implementation-cmake, poco, poco-vendor, ament-lint-common, ament-cmake, rmw-connext-cpp, rmw, rmw-opensplice-cpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-rmw-implementation";
  version = "0.7.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_implementation-release/archive/release/dashing/rmw_implementation/0.7.1-2.tar.gz";
    name = "0.7.1-2.tar.gz";
    sha256 = "d5ffa073fa3d8741f654aa0abd3f893f1a6c4923db292e28c8c416a9995eebb3";
  };

  buildType = "ament_cmake";
  buildInputs = [ rcutils rmw-fastrtps-cpp rmw-implementation-cmake poco poco-vendor rmw-connext-cpp rmw rmw-opensplice-cpp ];
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ poco poco-vendor rmw-implementation-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The decision which ROS middleware implementation should be used for C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
