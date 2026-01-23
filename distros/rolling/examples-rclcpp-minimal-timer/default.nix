
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-examples-rclcpp-minimal-timer";
  version = "0.21.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclcpp_minimal_timer/0.21.4-1.tar.gz";
    name = "0.21.4-1.tar.gz";
    sha256 = "a024198e201a8779ce3dd577079c93327df91fc5a9927fb9fc2e97d803d6c062";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Examples of minimal nodes which have timers";
    license = with lib.licenses; [ asl20 ];
  };
}
