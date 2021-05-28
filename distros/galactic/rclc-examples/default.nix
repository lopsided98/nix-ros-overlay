
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, example-interfaces, lifecycle-msgs, rcl, rclc, rclc-lifecycle, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-rclc-examples";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclc-release/archive/release/galactic/rclc_examples/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "e58654729a943c915aa94c72e20025ded5ccd42b02bce2f2ae51881d76de9b80";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ example-interfaces lifecycle-msgs rcl rclc rclc-lifecycle std-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Example of using rclc_executor'';
    license = with lib.licenses; [ asl20 ];
  };
}
