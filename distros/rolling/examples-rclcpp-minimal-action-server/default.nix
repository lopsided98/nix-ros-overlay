
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, example-interfaces, rclcpp, rclcpp-action }:
buildRosPackage {
  pname = "ros-rolling-examples-rclcpp-minimal-action-server";
  version = "0.21.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclcpp_minimal_action_server/0.21.0-1.tar.gz";
    name = "0.21.0-1.tar.gz";
    sha256 = "14098c7d64047b11f27efce0d543af581b16d1023dedf7eada9f950c5cb87eee";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ example-interfaces rclcpp rclcpp-action ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Minimal action server examples";
    license = with lib.licenses; [ asl20 ];
  };
}
