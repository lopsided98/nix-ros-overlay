
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, control-msgs, filters, generate-parameter-library, geometry-msgs, pluginlib, rclcpp, rclcpp-lifecycle, rcutils, realtime-tools }:
buildRosPackage {
  pname = "ros-iron-control-toolbox";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/control_toolbox-release/archive/release/iron/control_toolbox/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "905e58112dbc76281297e100c27c17274b5c5b4f64a6ff50aed2bb4beea233e1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest rclcpp-lifecycle ];
  propagatedBuildInputs = [ control-msgs filters generate-parameter-library geometry-msgs pluginlib rclcpp rcutils realtime-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The control toolbox contains modules that are useful across all controllers.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
