
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, dynamixel-sdk, dynamixel-sdk-custom-interfaces, rclcpp, rclpy }:
buildRosPackage {
  pname = "ros-lyrical-dynamixel-sdk-examples";
  version = "4.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dynamixel_sdk-release/archive/release/lyrical/dynamixel_sdk_examples/4.0.3-3.tar.gz";
    name = "4.0.3-3.tar.gz";
    sha256 = "434dff1816b191e7b7a9217922e0434eac09fab5da33e5164e5ab096460613d1";
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
