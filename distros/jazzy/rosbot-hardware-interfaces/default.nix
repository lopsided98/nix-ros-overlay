
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, diff-drive-controller, hardware-interface, imu-sensor-broadcaster, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rosbot-hardware-interfaces";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbot_ros-release/archive/release/jazzy/rosbot_hardware_interfaces/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "35ce902ea050f2b46bc8add1ffa272387c3c77fb15329b11ba164ce87838d298";
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
