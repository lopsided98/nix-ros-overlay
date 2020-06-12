
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-examples-rclcpp-multithreaded-executor";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/foxy/examples_rclcpp_multithreaded_executor/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "9f3421fbe084f56b9015b266fea1c1ee630d1ac8497c93245e5b64f9ffaa9f56";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rclcpp std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package containing example of how to implement a multithreaded executor'';
    license = with lib.licenses; [ asl20 ];
  };
}
