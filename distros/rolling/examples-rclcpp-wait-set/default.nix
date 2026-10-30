
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, example-interfaces, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-examples-rclcpp-wait-set";
  version = "0.22.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclcpp_wait_set/0.22.1-1.tar.gz";
    name = "0.22.1-1.tar.gz";
    sha256 = "b6b6c757c4000200573b2d34d8f3c6072ee50fad01005075ecef7d7d7ef130e1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros-core ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ example-interfaces rclcpp rclcpp-components std-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core ];

  meta = {
    description = "Example of how to use the rclcpp::WaitSet directly.";
    license = with lib.licenses; [ asl20 ];
  };
}
