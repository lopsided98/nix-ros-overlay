
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, example-interfaces, lifecycle-msgs, rcl, rclc, rclc-lifecycle, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-rclc-examples";
  version = "0.1.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclc-release/archive/release/foxy/rclc_examples/0.1.7-1.tar.gz";
    name = "0.1.7-1.tar.gz";
    sha256 = "b0823127bf5d89f15e9b6b66c81b274ef114aaf1a96c9b0b671d7533d0863e0a";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ example-interfaces lifecycle-msgs rcl rclc rclc-lifecycle std-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Example of using rclc_executor'';
    license = with lib.licenses; [ asl20 ];
  };
}
