
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, example-interfaces, rclcpp, rclcpp-action }:
buildRosPackage {
  pname = "ros-dashing-examples-rclcpp-minimal-action-server";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/dashing/examples_rclcpp_minimal_action_server/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "923d02387d9143e58e5b572165567183617d36fd7bcba050cab467c83d4a5c4f";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ example-interfaces rclcpp rclcpp-action ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Minimal action server examples'';
    license = with lib.licenses; [ asl20 ];
  };
}
