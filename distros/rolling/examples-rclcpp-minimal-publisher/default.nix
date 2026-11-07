
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-examples-rclcpp-minimal-publisher";
  version = "0.22.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclcpp_minimal_publisher/0.22.1-1.tar.gz";
    name = "0.22.1-1.tar.gz";
    sha256 = "d2c28f3f46ace50436c716ed1fe3859e800700164d0a8e71c073649cabf27409";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros-core ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp std-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core ];

  meta = {
    description = "Examples of minimal publisher nodes";
    license = with lib.licenses; [ asl20 ];
  };
}
