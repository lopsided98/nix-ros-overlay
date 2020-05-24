
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, rcl, rclc, std-msgs }:
buildRosPackage {
  pname = "ros-dashing-rclc-examples";
  version = "0.1.2-r2";

  src = fetchurl {
    url = "https://github.com/micro-ROS/rclc-release/archive/release/dashing/rclc_examples/0.1.2-2.tar.gz";
    name = "0.1.2-2.tar.gz";
    sha256 = "e8a178fb546277476529284265f9e1127577cffa05cb2b7a1be2c74bdfd7bc6b";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rcl rclc std-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Example of using rclc_executor'';
    license = with lib.licenses; [ asl20 ];
  };
}
