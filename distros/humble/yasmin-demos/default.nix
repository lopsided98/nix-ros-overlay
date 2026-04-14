
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-index-cpp, example-interfaces, geometry-msgs, nav-msgs, pluginlib, rclcpp, rclcpp-action, rclpy, ros-environment, yasmin, yasmin-factory, yasmin-ros, yasmin-viewer }:
buildRosPackage {
  pname = "ros-humble-yasmin-demos";
  version = "5.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/humble/yasmin_demos/5.0.0-1.tar.gz";
    name = "5.0.0-1.tar.gz";
    sha256 = "472d7184d02eab9d0bed008e39d0d98f5a59c1ee3475fd9cad0311c961358cfc";
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
