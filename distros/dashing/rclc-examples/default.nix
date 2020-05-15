
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, rcl, rclc, std-msgs }:
buildRosPackage {
  pname = "ros-dashing-rclc-examples";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/micro-ROS/rclc-release/archive/release/dashing/rclc_examples/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "348de05554e376d6ae9e8189e6282a92eb1c462f50cbf636eda8dbd797125311";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rcl rclc std-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Example of using rclc_executor'';
    license = with lib.licenses; [ asl20 ];
  };
}
