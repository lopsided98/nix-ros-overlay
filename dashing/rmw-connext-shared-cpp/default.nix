
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, connext-cmake-module, rosidl-cmake, ament-lint-auto, rcutils, rmw }:
buildRosPackage {
  pname = "ros-dashing-rmw-connext-shared-cpp";
  version = "0.7.3-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rmw_connext-release/archive/release/dashing/rmw_connext_shared_cpp/0.7.3-1.tar.gz;
    sha256 = "f29e918f46e28debc3f7f0648c7698a53d9a912cc7450274f6d511195f84e3e0";
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
