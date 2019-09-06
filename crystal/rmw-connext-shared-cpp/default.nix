
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, connext-cmake-module, rosidl-cmake, ament-lint-auto, rcutils, rmw }:
buildRosPackage {
  pname = "ros-crystal-rmw-connext-shared-cpp";
  version = "0.6.1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rmw_connext-release/archive/release/crystal/rmw_connext_shared_cpp/0.6.1-0.tar.gz;
    sha256 = "7c45059558c31cf04c5130b14d5df11dedac4f01991d29cec84c4d95784a120b";
  };

  buildType = "ament_cmake";
  buildInputs = [ connext-cmake-module rcutils rmw ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ connext-cmake-module ament-cmake ];
  nativeBuildInputs = [ rosidl-cmake ament-cmake ];

  meta = {
    description = ''C++ types and functions shared by the ROS middleware interface to RTI Connext Static and RTI Connext Dynamic.'';
    license = with lib.licenses; [ asl20 ];
  };
}
