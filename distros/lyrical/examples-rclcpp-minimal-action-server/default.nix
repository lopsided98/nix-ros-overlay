
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, example-interfaces, rclcpp, rclcpp-action }:
buildRosPackage {
  pname = "ros-lyrical-examples-rclcpp-minimal-action-server";
  version = "0.21.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/lyrical/examples_rclcpp_minimal_action_server/0.21.6-1.tar.gz";
    name = "0.21.6-1.tar.gz";
    sha256 = "810e01457b08dba2a3732c8149b6f8ec61fe6e04921faf2d907a86d97c6a5b46";
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
