
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ament-nodl, example-interfaces, launch-testing, launch-testing-ament-cmake, launch-testing-ros, nodl-python, nodl-to-policy, rclcpp, rclcpp-components, rclpy, ros2launch-security, sensor-msgs, sros2 }:
buildRosPackage {
  pname = "ros-humble-ros2launch-security-examples";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2launch_security-release/archive/release/humble/ros2launch_security_examples/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "193729d779fbe4306e2bf30050b9a0a73f5eb54214bd3d67ffcc4bb6fee43f55";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common launch-testing launch-testing-ament-cmake launch-testing-ros nodl-python nodl-to-policy sros2 ];
  propagatedBuildInputs = [ ament-nodl example-interfaces rclcpp rclcpp-components rclpy ros2launch-security sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Examples of how to use the ros2launch_security extension.";
    license = with lib.licenses; [ asl20 ];
  };
}
