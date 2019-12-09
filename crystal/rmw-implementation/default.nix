
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rcutils, rmw-fastrtps-cpp, rmw-implementation-cmake, poco, poco-vendor, ament-lint-common, ament-cmake, rmw-connext-cpp, rmw, rmw-opensplice-cpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-rmw-implementation";
  version = "0.6.1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_implementation-release/archive/release/crystal/rmw_implementation/0.6.1-0.tar.gz";
    name = "0.6.1-0.tar.gz";
    sha256 = "fd0cc3de840262b7d7a09f6593a8eb49dd1f2cbde4a0047e77b925a4b009ab91";
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
