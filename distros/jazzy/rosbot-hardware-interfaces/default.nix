
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, diff-drive-controller, hardware-interface, imu-sensor-broadcaster, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rosbot-hardware-interfaces";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbot_ros-release/archive/release/jazzy/rosbot_hardware_interfaces/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "f688b77d9e7f3f1335ea5e75f6da9492421c59eb8d731bc3952a64289e13c62c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pluginlib ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ diff-drive-controller hardware-interface imu-sensor-broadcaster rclcpp rclcpp-lifecycle realtime-tools ros2-control std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Hardware controller for ROSbot Series";
    license = with lib.licenses; [ asl20 ];
  };
}
