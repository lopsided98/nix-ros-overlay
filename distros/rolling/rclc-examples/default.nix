
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, example-interfaces, lifecycle-msgs, rcl, rclc, rclc-lifecycle, rclc-parameter, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-rclc-examples";
  version = "3.0.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclc-release/archive/release/rolling/rclc_examples/3.0.8-1.tar.gz";
    name = "3.0.8-1.tar.gz";
    sha256 = "b997fa9ca8dfacd484bd152cfab1b100bbcc5350ac4e8be3fbe0fedde4009583";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ example-interfaces lifecycle-msgs rcl rclc rclc-lifecycle rclc-parameter std-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Example of using rclc_executor'';
    license = with lib.licenses; [ asl20 ];
  };
}
