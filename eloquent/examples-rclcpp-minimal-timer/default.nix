
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclcpp, ament-cmake }:
buildRosPackage {
  pname = "ros-eloquent-examples-rclcpp-minimal-timer";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/eloquent/examples_rclcpp_minimal_timer/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "6ffda88f8c5524db53fe185813ea50804b655d70af267351c00a7df2ee0dca91";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp ];
  propagatedBuildInputs = [ rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Examples of minimal nodes which have timers'';
    license = with lib.licenses; [ asl20 ];
  };
}
