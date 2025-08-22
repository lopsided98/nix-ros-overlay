
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, example-interfaces, rclcpp, rclcpp-action }:
buildRosPackage {
  pname = "ros-humble-examples-rclcpp-minimal-action-server";
  version = "0.15.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/humble/examples_rclcpp_minimal_action_server/0.15.4-1.tar.gz";
    name = "0.15.4-1.tar.gz";
    sha256 = "b2de0112d4d00232721b54aa619da3b2389cd8eac0a4d84ce916e5318ec9b700";
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
