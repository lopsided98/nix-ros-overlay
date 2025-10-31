
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-examples-rclcpp-minimal-timer";
  version = "0.19.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/jazzy/examples_rclcpp_minimal_timer/0.19.7-1.tar.gz";
    name = "0.19.7-1.tar.gz";
    sha256 = "a0d3b7be40443ec34c3b8bcec6d01343af2ede16d23fad5f7a813cbf276ea756";
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
