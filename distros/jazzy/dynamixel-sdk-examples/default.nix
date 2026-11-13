
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, dynamixel-sdk, dynamixel-sdk-custom-interfaces, rclcpp, rclpy }:
buildRosPackage {
  pname = "ros-jazzy-dynamixel-sdk-examples";
  version = "4.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dynamixel_sdk-release/archive/release/jazzy/dynamixel_sdk_examples/4.1.0-1.tar.gz";
    name = "4.1.0-1.tar.gz";
    sha256 = "5b80efc63696677fad4c08dcab5a54753da5ee7ee1ee537ef42b296cc70a373c";
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
