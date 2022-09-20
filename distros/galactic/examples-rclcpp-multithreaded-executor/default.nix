
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-examples-rclcpp-multithreaded-executor";
  version = "0.11.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/galactic/examples_rclcpp_multithreaded_executor/0.11.2-1.tar.gz";
    name = "0.11.2-1.tar.gz";
    sha256 = "ada58224a8183d2db2bca95eab3a223f62d64ecaab2cc5fb7215c8a601872370";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package containing example of how to implement a multithreaded executor'';
    license = with lib.licenses; [ asl20 ];
  };
}
