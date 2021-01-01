
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, lifecycle-msgs, rcl, rclc, rclc-lifecycle, std-msgs }:
buildRosPackage {
  pname = "ros-dashing-rclc-examples";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/micro-ROS/rclc-release/archive/release/dashing/rclc_examples/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "9b3c74254f496e3874189f8322c98054c3f5112cf12a600cb4b5203a996f649f";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ lifecycle-msgs rcl rclc rclc-lifecycle std-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Example of using rclc_executor'';
    license = with lib.licenses; [ asl20 ];
  };
}
