
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, example-interfaces, lifecycle-msgs, rcl, rclc, rclc-lifecycle, rclc-parameter, std-msgs }:
buildRosPackage {
  pname = "ros-iron-rclc-examples";
  version = "3.0.9-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclc-release/archive/release/iron/rclc_examples/3.0.9-3.tar.gz";
    name = "3.0.9-3.tar.gz";
    sha256 = "b1fc6db030cae1d15084a570a94239bb8ca4c0b3bc9cb0a7cfb0aade0367270f";
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
