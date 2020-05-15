
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, rcl, rclc, std-msgs }:
buildRosPackage {
  pname = "ros-eloquent-rclc-examples";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/micro-ROS/rclc-release/archive/release/eloquent/rclc_examples/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "c94aef6f6db9d465641d352a2efaefae839451079dac8f9753565699742b684a";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rcl rclc std-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Example of using rclc_executor'';
    license = with lib.licenses; [ asl20 ];
  };
}
