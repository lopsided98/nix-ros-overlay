
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, example-interfaces, rclcpp, rclcpp-action }:
buildRosPackage {
  pname = "ros-rolling-examples-rclcpp-minimal-action-client";
  version = "0.19.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclcpp_minimal_action_client/0.19.2-1.tar.gz";
    name = "0.19.2-1.tar.gz";
    sha256 = "5d6cb4b799a3010b292975a3b3b19d3cbe1f866e756a188a583a31c5b9ce84e9";
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
