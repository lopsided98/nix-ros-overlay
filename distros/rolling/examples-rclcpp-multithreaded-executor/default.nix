
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-examples-rclcpp-multithreaded-executor";
  version = "0.22.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclcpp_multithreaded_executor/0.22.1-1.tar.gz";
    name = "0.22.1-1.tar.gz";
    sha256 = "8eb57cbf79ea2836baf8ae8caed947fa5b2a2a483c513dbee4e1cda0baf75cab";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros-core ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp std-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core ];

  meta = {
    description = "Package containing example of how to implement a multithreaded executor";
    license = with lib.licenses; [ asl20 ];
  };
}
