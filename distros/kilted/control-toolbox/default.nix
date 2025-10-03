
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, control-msgs, eigen, filters, fmt, generate-parameter-library, geometry-msgs, pluginlib, rclcpp, rclcpp-lifecycle, rcutils, realtime-tools, ros2-control-cmake, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-control-toolbox";
  version = "5.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/control_toolbox-release/archive/release/kilted/control_toolbox/5.8.0-1.tar.gz";
    name = "5.8.0-1.tar.gz";
    sha256 = "8e48a2bd78954c4bff798ee150c16ab0f6eb9e1419f00c7339845429e0cca9dc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake fmt ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock rclcpp-lifecycle ];
  propagatedBuildInputs = [ backward-ros control-msgs eigen filters generate-parameter-library geometry-msgs pluginlib rclcpp rcutils realtime-tools tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The control toolbox contains modules that are useful across all controllers.";
    license = with lib.licenses; [ asl20 ];
  };
}
