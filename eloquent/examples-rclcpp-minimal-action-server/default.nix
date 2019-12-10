
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, example-interfaces, rclcpp, rclcpp-action }:
buildRosPackage {
  pname = "ros-eloquent-examples-rclcpp-minimal-action-server";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/eloquent/examples_rclcpp_minimal_action_server/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "8461dba86cb317c3271a3535ac2087177ebfd9251bcd82cbd7ef4fbeb848f827";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ example-interfaces rclcpp rclcpp-action ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Minimal action server examples'';
    license = with lib.licenses; [ asl20 ];
  };
}
