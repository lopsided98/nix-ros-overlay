
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-index-cpp, example-interfaces, geometry-msgs, nav-msgs, pluginlib, rclcpp, rclcpp-action, rclpy, ros-environment, yasmin, yasmin-factory, yasmin-ros, yasmin-viewer }:
buildRosPackage {
  pname = "ros-kilted-yasmin-demos";
  version = "5.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/kilted/yasmin_demos/5.0.0-1.tar.gz";
    name = "5.0.0-1.tar.gz";
    sha256 = "b352d61b6cacf54faf6c08c955547c99448fef085e820e20462e0d702fed7dcb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ros-environment ];
  propagatedBuildInputs = [ ament-index-cpp example-interfaces geometry-msgs nav-msgs pluginlib rclcpp rclcpp-action rclpy yasmin yasmin-factory yasmin-ros yasmin-viewer ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Demos of YASMIN (Yet Another State MachINe)";
    license = with lib.licenses; [ "GPL-3.0" ];
  };
}
