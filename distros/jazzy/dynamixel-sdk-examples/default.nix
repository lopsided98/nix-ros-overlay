
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, dynamixel-sdk, dynamixel-sdk-custom-interfaces, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-dynamixel-sdk-examples";
  version = "3.7.40-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dynamixel_sdk-release/archive/release/jazzy/dynamixel_sdk_examples/3.7.40-6.tar.gz";
    name = "3.7.40-6.tar.gz";
    sha256 = "8e3284e4751eaf8271d6524680b6825af6e7cd8f57a2c092f4e0b01b144ec297";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ dynamixel-sdk dynamixel-sdk-custom-interfaces rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS2 examples using ROBOTIS DYNAMIXEL SDK";
    license = with lib.licenses; [ asl20 ];
  };
}
