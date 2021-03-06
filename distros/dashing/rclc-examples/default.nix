
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, example-interfaces, lifecycle-msgs, rcl, rclc, rclc-lifecycle, std-msgs }:
buildRosPackage {
  pname = "ros-dashing-rclc-examples";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclc-release/archive/release/dashing/rclc_examples/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "5a1912f28f67cafb506d8609ef2c6383f5d09fbd0b5c3ea2dffc6011d08a399c";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ example-interfaces lifecycle-msgs rcl rclc rclc-lifecycle std-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Example of using rclc_executor'';
    license = with lib.licenses; [ asl20 ];
  };
}
