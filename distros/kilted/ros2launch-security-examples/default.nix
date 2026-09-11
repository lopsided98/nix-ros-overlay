
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ament-nodl, example-interfaces, launch-testing, launch-testing-ament-cmake, launch-testing-ros, nodl, nodl-to-policy, rclcpp, rclcpp-components, rclpy, ros2launch-security, sensor-msgs, sros2 }:
buildRosPackage {
  pname = "ros-kilted-ros2launch-security-examples";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2launch_security-release/archive/release/kilted/ros2launch_security_examples/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "c8233e7cd4c3013dda1a2586173529f3441c770d56d179bdbb349e9b4751bc2e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common launch-testing launch-testing-ament-cmake launch-testing-ros nodl nodl-to-policy sros2 ];
  propagatedBuildInputs = [ ament-nodl example-interfaces rclcpp rclcpp-components rclpy ros2launch-security sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Examples of how to use the ros2launch_security extension.";
    license = with lib.licenses; [ asl20 ];
  };
}
