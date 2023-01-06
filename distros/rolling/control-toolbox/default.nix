
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, control-msgs, rclcpp, rclcpp-lifecycle, rcutils, realtime-tools }:
buildRosPackage {
  pname = "ros-rolling-control-toolbox";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/control_toolbox-release/archive/release/rolling/control_toolbox/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "07f909caf3e5bf418e46c779fd9e7bb0a33c2268ca0a2fcd13b2fceac9236458";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest rclcpp-lifecycle ];
  propagatedBuildInputs = [ control-msgs rclcpp rcutils realtime-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The control toolbox contains modules that are useful across all controllers.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
