
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, example-interfaces, rclcpp, rclcpp-action }:
buildRosPackage {
  pname = "ros-rolling-examples-rclcpp-minimal-action-client";
  version = "0.22.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclcpp_minimal_action_client/0.22.1-1.tar.gz";
    name = "0.22.1-1.tar.gz";
    sha256 = "fa31d6e1cf302cffe55d1c3a07a5ec205b1096f92d1aa3c72f50fdc90befd88a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros-core ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ example-interfaces rclcpp rclcpp-action ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core ];

  meta = {
    description = "Minimal action client examples";
    license = with lib.licenses; [ asl20 ];
  };
}
