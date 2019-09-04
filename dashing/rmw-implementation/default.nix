
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, poco, rmw-opensplice-cpp, ament-cmake, rmw-implementation-cmake, ament-lint-common, rmw-connext-cpp, poco-vendor, rmw-fastrtps-cpp, ament-lint-auto, rcutils, rmw }:
buildRosPackage {
  pname = "ros-dashing-rmw-implementation";
  version = "0.7.1-r2";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rmw_implementation-release/archive/release/dashing/rmw_implementation/0.7.1-2.tar.gz;
    sha256 = "d5ffa073fa3d8741f654aa0abd3f893f1a6c4923db292e28c8c416a9995eebb3";
  };

  buildType = "ament_cmake";
  buildInputs = [ poco rmw-opensplice-cpp rmw-implementation-cmake poco-vendor rmw rmw-fastrtps-cpp rcutils rmw-connext-cpp ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ poco poco-vendor rmw-implementation-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The decision which ROS middleware implementation should be used for C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
