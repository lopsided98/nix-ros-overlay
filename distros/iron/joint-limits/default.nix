
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, launch-ros, launch-testing-ament-cmake, rclcpp, rclcpp-lifecycle, urdf }:
buildRosPackage {
  pname = "ros-iron-joint-limits";
  version = "3.27.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/iron/joint_limits/3.27.0-1.tar.gz";
    name = "3.27.0-1.tar.gz";
    sha256 = "68d5305c96a1c3325ca602cf2232f7b2da04b39936b5ed159408a04220a3a06f";
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
