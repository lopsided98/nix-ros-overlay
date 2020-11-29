
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, lifecycle-msgs, rcl, rclc, rclc-lifecycle, std-msgs }:
buildRosPackage {
  pname = "ros-eloquent-rclc-examples";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/micro-ROS/rclc-release/archive/release/eloquent/rclc_examples/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "29261dfa6df331d20bfacfd316f486fb607d7a7741adfd8c8a9c17062a33cb4c";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ lifecycle-msgs rcl rclc rclc-lifecycle std-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Example of using rclc_executor'';
    license = with lib.licenses; [ asl20 ];
  };
}
