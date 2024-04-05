
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, ament-cmake-gtest, launch-testing-ament-cmake, rclcpp, rclcpp-lifecycle, urdf }:
buildRosPackage {
  pname = "ros-rolling-joint-limits";
  version = "4.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/rolling/joint_limits/4.8.0-1.tar.gz";
    name = "4.8.0-1.tar.gz";
    sha256 = "da43df20d812b82b6909b784f704a5bd8762c4c93c1364614bbf4fbba2f87880";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gen-version-h ];
  checkInputs = [ ament-cmake-gtest launch-testing-ament-cmake ];
  propagatedBuildInputs = [ rclcpp rclcpp-lifecycle urdf ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gen-version-h ];

  meta = {
    description = "Interfaces for handling of joint limits for controllers or hardware.";
    license = with lib.licenses; [ asl20 ];
  };
}
