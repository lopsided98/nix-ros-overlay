
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, launch-ros, launch-testing-ament-cmake, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-humble-joint-limits";
  version = "2.43.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/humble/joint_limits/2.43.0-1.tar.gz";
    name = "2.43.0-1.tar.gz";
    sha256 = "3757cf6724739ba2fe704e5d56b161cd4d1b7526dee69cab2ac03985e3209cac";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest launch-ros launch-testing-ament-cmake ];
  propagatedBuildInputs = [ rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Interfaces for handling of joint limits for controllers or hardware.";
    license = with lib.licenses; [ asl20 ];
  };
}
