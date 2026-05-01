
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, example-interfaces, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-examples-rclcpp-wait-set";
  version = "0.21.5-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/lyrical/examples_rclcpp_wait_set/0.21.5-3.tar.gz";
    name = "0.21.5-3.tar.gz";
    sha256 = "2c696bfca9dfa64eb42635fb4992f696a312d8085bb4fe4a8e4fb96e4657178a";
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
