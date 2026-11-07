
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-examples-rclcpp-minimal-timer";
  version = "0.22.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclcpp_minimal_timer/0.22.1-1.tar.gz";
    name = "0.22.1-1.tar.gz";
    sha256 = "a8044e4979c1017eba8cbfc95ea0d517f83e5aa9f4f7cc99e507907e14cb35d2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros-core ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core ];

  meta = {
    description = "Examples of minimal nodes which have timers";
    license = with lib.licenses; [ asl20 ];
  };
}
