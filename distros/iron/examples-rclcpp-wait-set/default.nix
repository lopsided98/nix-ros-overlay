
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, example-interfaces, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-iron-examples-rclcpp-wait-set";
  version = "0.18.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/iron/examples_rclcpp_wait_set/0.18.2-1.tar.gz";
    name = "0.18.2-1.tar.gz";
    sha256 = "e638bd7cd397b9b97751d2de9021173bd793769d41f1fdeae8efd7120f6c4b8f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ example-interfaces rclcpp rclcpp-components std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Example of how to use the rclcpp::WaitSet directly.";
    license = with lib.licenses; [ asl20 ];
  };
}
