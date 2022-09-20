
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-gtest, ament-cmake-ros, ament-cmake-xmllint, ament-index-python, boost, console-bridge, fmt, launch, launch-ros, launch-testing, launch-xml, pythonPackages, rclcpp, rclpy, rcutils, robot-state-publisher, ros-testing, rosbag2-cpp, rosbag2-storage-default-plugins, rviz2, sensor-msgs, xacro }:
buildRosPackage {
  pname = "ros-foxy-psen-scan-v2";
  version = "0.20.0-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/psen_scan_v2-ros2-release/archive/release/foxy/psen_scan_v2/0.20.0-1.tar.gz";
    name = "0.20.0-1.tar.gz";
    sha256 = "1ef11d8b0abcbfdde06f130e65f3b25edd253b1f4b8c6621aab7a2330882a95b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-gtest ament-cmake-ros ament-cmake-xmllint ament-index-python console-bridge launch launch-ros launch-testing launch-xml pythonPackages.pytest rclpy ros-testing rosbag2-cpp rosbag2-storage-default-plugins ];
  propagatedBuildInputs = [ boost fmt launch-ros rclcpp rcutils robot-state-publisher rviz2 sensor-msgs xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS support for the Pilz laser scanner'';
    license = with lib.licenses; [ lgpl3Only ];
  };
}
