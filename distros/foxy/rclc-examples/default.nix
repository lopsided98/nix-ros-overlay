
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, rcl, rclc, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-rclc-examples";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/micro-ROS/rclc-release/archive/release/foxy/rclc_examples/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "d51d0160e3809707c78b926ea08c2469986f184ebf0639217cf0120e1ef97e1a";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rcl rclc std-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Example of using rclc_executor'';
    license = with lib.licenses; [ asl20 ];
  };
}
