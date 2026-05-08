
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-examples-rclcpp-minimal-timer";
  version = "0.22.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclcpp_minimal_timer/0.22.0-1.tar.gz";
    name = "0.22.0-1.tar.gz";
    sha256 = "cc1cabcd85d5a8fcc032672b18aee7fae896bc92dd5ff3a330df4672755f222b";
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
