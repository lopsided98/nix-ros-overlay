
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-index-cpp, example-interfaces, geometry-msgs, nav-msgs, pluginlib, rclcpp, rclcpp-action, rclpy, ros-environment, yasmin, yasmin-factory, yasmin-ros, yasmin-viewer }:
buildRosPackage {
  pname = "ros-jazzy-yasmin-demos";
  version = "6.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/jazzy/yasmin_demos/6.0.0-1.tar.gz";
    name = "6.0.0-1.tar.gz";
    sha256 = "26a7d966ffbfc10dd1e217137c4a381415c47859ef2ac5c80c3ce78df9cd4bc1";
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
