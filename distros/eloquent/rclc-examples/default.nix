
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, lifecycle-msgs, rcl, rclc, rclc-lifecycle, std-msgs }:
buildRosPackage {
  pname = "ros-eloquent-rclc-examples";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/micro-ROS/rclc-release/archive/release/eloquent/rclc_examples/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "6d8d5fb327f848022a11a0a07fcfd7f17db6737b58557d6871d35322bf9bd278";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ lifecycle-msgs rcl rclc rclc-lifecycle std-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Example of using rclc_executor'';
    license = with lib.licenses; [ asl20 ];
  };
}
