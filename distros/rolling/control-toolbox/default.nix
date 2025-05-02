
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, control-msgs, eigen, filters, generate-parameter-library, geometry-msgs, pluginlib, rclcpp, rclcpp-lifecycle, rcutils, realtime-tools, ros2-control-cmake, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-control-toolbox";
  version = "5.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/control_toolbox-release/archive/release/rolling/control_toolbox/5.3.1-1.tar.gz";
    name = "5.3.1-1.tar.gz";
    sha256 = "2397dc0aff2fbe230ee97f954b9332cdad8e893d4b37db32a4aa0981d403a568";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock rclcpp-lifecycle ];
  propagatedBuildInputs = [ control-msgs eigen filters generate-parameter-library geometry-msgs pluginlib rclcpp rcutils realtime-tools tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The control toolbox contains modules that are useful across all controllers.";
    license = with lib.licenses; [ asl20 ];
  };
}
