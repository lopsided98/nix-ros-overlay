
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, launch-ros, launch-testing-ament-cmake, rclcpp, rclcpp-lifecycle, urdf }:
buildRosPackage {
  pname = "ros-jazzy-joint-limits";
  version = "4.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/jazzy/joint_limits/4.11.0-1.tar.gz";
    name = "4.11.0-1.tar.gz";
    sha256 = "1dec0f210468e83337b86fcd3ce62a9ebe19ea6024d011a97b12f99abb8b2ce9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest launch-ros launch-testing-ament-cmake ];
  propagatedBuildInputs = [ rclcpp rclcpp-lifecycle urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Interfaces for handling of joint limits for controllers or hardware.";
    license = with lib.licenses; [ asl20 ];
  };
}
