
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, example-interfaces, rclcpp, rclcpp-action }:
buildRosPackage {
  pname = "ros-jazzy-examples-rclcpp-minimal-action-client";
  version = "0.19.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/jazzy/examples_rclcpp_minimal_action_client/0.19.4-1.tar.gz";
    name = "0.19.4-1.tar.gz";
    sha256 = "39478ec3b44796b11d59398088931b77c6484ff95695a3bc1968264b1f2d21f1";
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
