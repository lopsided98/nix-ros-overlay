
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-eloquent-examples-rclcpp-multithreaded-executor";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/eloquent/examples_rclcpp_multithreaded_executor/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "b19967200ee0b2d21b6c3d25f1b29c5cd04ab4b15a605d0145e43ac8641c832e";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rclcpp std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package containing example of how to implement a multithreaded executor'';
    license = with lib.licenses; [ asl20 ];
  };
}
