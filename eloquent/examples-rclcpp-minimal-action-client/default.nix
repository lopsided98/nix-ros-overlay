
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, example-interfaces, rclcpp-action, rclcpp, ament-cmake }:
buildRosPackage {
  pname = "ros-eloquent-examples-rclcpp-minimal-action-client";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/eloquent/examples_rclcpp_minimal_action_client/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "794436535e19569e199b002a5316c13c9d623af55a88264c2fab02b3dd03a1de";
  };

  buildType = "ament_cmake";
  buildInputs = [ example-interfaces rclcpp-action rclcpp ];
  propagatedBuildInputs = [ example-interfaces rclcpp-action rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Minimal action client examples'';
    license = with lib.licenses; [ asl20 ];
  };
}
