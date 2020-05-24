
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, rcl, rclc, std-msgs }:
buildRosPackage {
  pname = "ros-eloquent-rclc-examples";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/micro-ROS/rclc-release/archive/release/eloquent/rclc_examples/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "07b289929c64d83e4f20882d5ff474c07f19500eff441c32a0189fcf5b405444";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rcl rclc std-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Example of using rclc_executor'';
    license = with lib.licenses; [ asl20 ];
  };
}
