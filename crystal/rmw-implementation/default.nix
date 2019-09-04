
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, poco, rmw-opensplice-cpp, ament-cmake, rmw-implementation-cmake, ament-lint-common, rmw-connext-cpp, poco-vendor, rmw-fastrtps-cpp, ament-lint-auto, rcutils, rmw }:
buildRosPackage {
  pname = "ros-crystal-rmw-implementation";
  version = "0.6.1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rmw_implementation-release/archive/release/crystal/rmw_implementation/0.6.1-0.tar.gz;
    sha256 = "fd0cc3de840262b7d7a09f6593a8eb49dd1f2cbde4a0047e77b925a4b009ab91";
  };

  buildInputs = [ poco rmw-opensplice-cpp rmw-implementation-cmake poco-vendor rmw rmw-fastrtps-cpp rcutils rmw-connext-cpp ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ poco poco-vendor rmw-implementation-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The decision which ROS middleware implementation should be used for C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
