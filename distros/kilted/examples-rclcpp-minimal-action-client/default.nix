
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, example-interfaces, rclcpp, rclcpp-action }:
buildRosPackage {
  pname = "ros-kilted-examples-rclcpp-minimal-action-client";
  version = "0.20.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/kilted/examples_rclcpp_minimal_action_client/0.20.7-1.tar.gz";
    name = "0.20.7-1.tar.gz";
    sha256 = "e7e1c3ffd8ab99bc3e9ad532c5cffd39ccb4332c0fdb1e0ab3a64474a386635c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ example-interfaces rclcpp rclcpp-action ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Minimal action client examples";
    license = with lib.licenses; [ asl20 ];
  };
}
