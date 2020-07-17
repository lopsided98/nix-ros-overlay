
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, connext-cmake-module, rcpputils, rcutils, rmw, rosidl-cmake }:
buildRosPackage {
  pname = "ros-dashing-rmw-connext-shared-cpp";
  version = "0.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_connext-release/archive/release/dashing/rmw_connext_shared_cpp/0.7.5-1.tar.gz";
    name = "0.7.5-1.tar.gz";
    sha256 = "fb0296c8663e8badedf9dc04d8cc925ccb25b85fa09ffa0e754e0f1fe4106f23";
  };

  buildType = "ament_cmake";
  buildInputs = [ rcpputils rcutils rmw ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake connext-cmake-module ];
  nativeBuildInputs = [ ament-cmake rosidl-cmake ];

  meta = {
    description = ''C++ types and functions shared by the ROS middleware interface to RTI Connext Static and RTI Connext Dynamic.'';
    license = with lib.licenses; [ asl20 ];
  };
}
