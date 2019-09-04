
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake, rmw-implementation-cmake, ament-lint-common, launch-testing, sensor-msgs, launch, rclcpp, std-msgs, ament-lint-auto, opencv3 }:
buildRosPackage {
  pname = "ros-crystal-image-tools";
  version = "0.6.2";

  src = fetchurl {
    url = https://github.com/ros2-gbp/demos-release/archive/release/crystal/image_tools/0.6.2-0.tar.gz;
    sha256 = "6b7323ff77c5f2a3770d94e85e1d925ba6b657f5fd0110a644230aba2ad04287";
  };

  buildInputs = [ std-msgs sensor-msgs opencv3 rclcpp ];
  checkInputs = [ ament-cmake-pytest rmw-implementation-cmake ament-lint-common launch-testing launch ament-lint-auto ];
  propagatedBuildInputs = [ std-msgs sensor-msgs opencv3 rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Tools to capture and play back images to and from DDS subscriptions and publications.'';
    license = with lib.licenses; [ asl20 ];
  };
}
