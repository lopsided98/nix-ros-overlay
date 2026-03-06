
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, diff-drive-controller, hardware-interface, imu-sensor-broadcaster, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rosbot-hardware-interfaces";
  version = "0.18.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbot_ros-release/archive/release/jazzy/rosbot_hardware_interfaces/0.18.6-1.tar.gz";
    name = "0.18.6-1.tar.gz";
    sha256 = "66f268195193d9dd1a34d3eb8b5fa39cc99632c4c34a5d2ea1a13c48606612e0";
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
