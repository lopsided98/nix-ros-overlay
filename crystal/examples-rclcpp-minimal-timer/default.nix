
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclcpp, ament-cmake }:
buildRosPackage {
  pname = "ros-crystal-examples-rclcpp-minimal-timer";
  version = "0.6.3";

  src = fetchurl {
    url = https://github.com/ros2-gbp/examples-release/archive/release/crystal/examples_rclcpp_minimal_timer/0.6.3-0.tar.gz;
    sha256 = "0844580bbf14b2ac1bb4494ad84842edadff3252a491dda7087d5159e685fbdc";
  };

  buildInputs = [ rclcpp ];
  propagatedBuildInputs = [ rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Examples of minimal nodes which have timers'';
    license = with lib.licenses; [ asl20 ];
  };
}
