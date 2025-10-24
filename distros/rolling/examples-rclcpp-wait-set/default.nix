
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, example-interfaces, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-examples-rclcpp-wait-set";
  version = "0.21.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclcpp_wait_set/0.21.3-1.tar.gz";
    name = "0.21.3-1.tar.gz";
    sha256 = "fd9535ad6a1d5839ddb3e9312322e1d209576b014d419edb106b62a6b1c9004c";
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
