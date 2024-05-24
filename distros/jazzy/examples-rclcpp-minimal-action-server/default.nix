
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, example-interfaces, rclcpp, rclcpp-action }:
buildRosPackage {
  pname = "ros-jazzy-examples-rclcpp-minimal-action-server";
  version = "0.19.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/jazzy/examples_rclcpp_minimal_action_server/0.19.3-2.tar.gz";
    name = "0.19.3-2.tar.gz";
    sha256 = "24396de3639c0ad008692740adeb84e7eaa2e7216235c429da99fafa0cd66ea3";
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
