
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-index-cpp, example-interfaces, geometry-msgs, nav-msgs, pluginlib, rclcpp, rclcpp-action, rclpy, ros-environment, yasmin, yasmin-factory, yasmin-ros, yasmin-viewer }:
buildRosPackage {
  pname = "ros-rolling-yasmin-demos";
  version = "5.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/rolling/yasmin_demos/5.0.0-1.tar.gz";
    name = "5.0.0-1.tar.gz";
    sha256 = "586dec5a6e83fb594802e598c4b33ba1e8e50de45b5a472140faaf6c1568f216";
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
