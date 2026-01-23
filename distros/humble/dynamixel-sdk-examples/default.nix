
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, dynamixel-sdk, dynamixel-sdk-custom-interfaces, rclcpp, rclpy }:
buildRosPackage {
  pname = "ros-humble-dynamixel-sdk-examples";
  version = "4.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dynamixel_sdk-release/archive/release/humble/dynamixel_sdk_examples/4.0.3-1.tar.gz";
    name = "4.0.3-1.tar.gz";
    sha256 = "4aee11f26b51c6f9ac49db45e035eae1459c2ac7e1c08c5adeff3eb688e7f27d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ dynamixel-sdk dynamixel-sdk-custom-interfaces rclcpp rclpy ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "ROS 2 examples using ROBOTIS DYNAMIXEL SDK";
    license = with lib.licenses; [ asl20 ];
  };
}
