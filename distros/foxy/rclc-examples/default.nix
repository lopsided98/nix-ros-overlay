
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, lifecycle-msgs, rcl, rclc, rclc-lifecycle, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-rclc-examples";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/micro-ROS/rclc-release/archive/release/foxy/rclc_examples/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "cecc423199eb6294febdbb30166f86d300e6c09c466ddef14f8aa01b9726735b";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ lifecycle-msgs rcl rclc rclc-lifecycle std-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Example of using rclc_executor'';
    license = with lib.licenses; [ asl20 ];
  };
}
