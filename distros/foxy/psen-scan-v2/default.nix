
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-gtest, ament-cmake-ros, ament-cmake-xmllint, ament-index-python, boost, console-bridge, fmt, launch, launch-ros, launch-testing, launch-xml, pythonPackages, rclcpp, rclpy, rcutils, robot-state-publisher, ros-testing, rosbag2-cpp, rosbag2-storage-default-plugins, rviz2, sensor-msgs, xacro }:
buildRosPackage {
  pname = "ros-foxy-psen-scan-v2";
  version = "0.20.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "PilzDE";
        repo = "psen_scan_v2-ros2-release";
        rev = "release/foxy/psen_scan_v2/0.20.0-1";
        sha256 = "sha256-P38ofVB478q7cBJPA6jWBGY+7s6ce1MlQIj7Zaat17I=";
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
