
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, dynamixel-sdk, dynamixel-sdk-custom-interfaces, rclcpp }:
buildRosPackage {
  pname = "ros-dashing-dynamixel-sdk-examples";
  version = "3.7.40-r10";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/dynamixel_sdk-release/archive/release/dashing/dynamixel_sdk_examples/3.7.40-10.tar.gz";
    name = "3.7.40-10.tar.gz";
    sha256 = "a1dea37c6c95ee9c5c66a080179846e586b3a205c0ce1470cdf41b30efcc3715";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ dynamixel-sdk dynamixel-sdk-custom-interfaces rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 examples using ROBOTIS DYNAMIXEL SDK'';
    license = with lib.licenses; [ asl20 ];
  };
}
