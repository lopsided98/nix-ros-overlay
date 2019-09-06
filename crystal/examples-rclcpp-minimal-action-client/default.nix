
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclcpp-action, rclcpp, example-interfaces, ament-cmake }:
buildRosPackage {
  pname = "ros-crystal-examples-rclcpp-minimal-action-client";
  version = "0.6.3";

  src = fetchurl {
    url = https://github.com/ros2-gbp/examples-release/archive/release/crystal/examples_rclcpp_minimal_action_client/0.6.3-0.tar.gz;
    sha256 = "c0b4a4f04e4aa693e82c2091a69aef412fe5e99b2f6e5e23d179629f78a7e1a0";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp-action example-interfaces rclcpp ];
  propagatedBuildInputs = [ rclcpp-action example-interfaces rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Minimal action client examples'';
    license = with lib.licenses; [ asl20 ];
  };
}
