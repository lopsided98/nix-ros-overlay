
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, control-msgs, eigen, filters, fmt, generate-parameter-library, geometry-msgs, pluginlib, rclcpp, rclcpp-lifecycle, rcutils, realtime-tools, ros2-control-cmake, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-control-toolbox";
  version = "4.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/control_toolbox-release/archive/release/jazzy/control_toolbox/4.8.0-1.tar.gz";
    name = "4.8.0-1.tar.gz";
    sha256 = "a0d62f59ba74530f4ef02e1f179acafc52e9bf4e078180f6645de0b47d280909";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock rclcpp-lifecycle ];
  propagatedBuildInputs = [ backward-ros control-msgs eigen filters fmt generate-parameter-library geometry-msgs pluginlib rclcpp rcutils realtime-tools tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The control toolbox contains modules that are useful across all controllers.";
    license = with lib.licenses; [ asl20 ];
  };
}
