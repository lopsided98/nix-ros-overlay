
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-examples-rclcpp-multithreaded-executor";
  version = "0.20.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/kilted/examples_rclcpp_multithreaded_executor/0.20.5-1.tar.gz";
    name = "0.20.5-1.tar.gz";
    sha256 = "f66a8d1810928a7dd5289f63a5dab06204b873841f71f55ed86182ad14d27917";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package containing example of how to implement a multithreaded executor";
    license = with lib.licenses; [ asl20 ];
  };
}
