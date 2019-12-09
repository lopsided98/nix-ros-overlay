
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, launch, rmw-implementation-cmake, std-msgs, launch-testing, ament-lint-common, ament-cmake, ament-lint-auto, ament-cmake-pytest, rclcpp, opencv3 }:
buildRosPackage {
  pname = "ros-crystal-image-tools";
  version = "0.6.2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/crystal/image_tools/0.6.2-0.tar.gz";
    name = "0.6.2-0.tar.gz";
    sha256 = "6b7323ff77c5f2a3770d94e85e1d925ba6b657f5fd0110a644230aba2ad04287";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs sensor-msgs rclcpp opencv3 ];
  checkInputs = [ launch rmw-implementation-cmake launch-testing ament-lint-common ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ std-msgs sensor-msgs rclcpp opencv3 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Tools to capture and play back images to and from DDS subscriptions and publications.'';
    license = with lib.licenses; [ asl20 ];
  };
}
