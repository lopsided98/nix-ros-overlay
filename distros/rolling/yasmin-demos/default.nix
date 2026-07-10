
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-index-cpp, example-interfaces, geometry-msgs, nav-msgs, pluginlib, rclcpp, rclcpp-action, rclpy, ros-environment, yasmin, yasmin-factory, yasmin-ros, yasmin-viewer }:
buildRosPackage {
  pname = "ros-rolling-yasmin-demos";
  version = "6.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/rolling/yasmin_demos/6.0.0-1.tar.gz";
    name = "6.0.0-1.tar.gz";
    sha256 = "7c75e3cc20f107c068c72d6c02cc16d4a13cada8f87ea3751eea98ee1c866a6e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ros-environment ];
  propagatedBuildInputs = [ ament-index-cpp example-interfaces geometry-msgs nav-msgs pluginlib rclcpp rclcpp-action rclpy yasmin yasmin-factory yasmin-ros yasmin-viewer ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Demos of YASMIN (Yet Another State MachINe)";
    license = with lib.licenses; [ asl20 ];
  };
}
