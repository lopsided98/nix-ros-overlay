
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, dynamixel-sdk, dynamixel-sdk-custom-interfaces, rclcpp, rclpy }:
buildRosPackage {
  pname = "ros-rolling-dynamixel-sdk-examples";
  version = "4.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dynamixel_sdk-release/archive/release/rolling/dynamixel_sdk_examples/4.0.3-1.tar.gz";
    name = "4.0.3-1.tar.gz";
    sha256 = "5a972f92fc12d6c80d032f62822fe3716d5b2608bf435b125932935585f40730";
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
