
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclcpp-action, rclcpp, example-interfaces, ament-cmake }:
buildRosPackage {
  pname = "ros-crystal-examples-rclcpp-minimal-action-server";
  version = "0.6.3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/crystal/examples_rclcpp_minimal_action_server/0.6.3-0.tar.gz";
    name = "0.6.3-0.tar.gz";
    sha256 = "b05d0aabfa0ead11e5a42ebddb00917a0033ec7199cc21b1e93e262e4c9fcd64";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp-action example-interfaces rclcpp ];
  propagatedBuildInputs = [ rclcpp-action example-interfaces rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Minimal action server examples'';
    license = with lib.licenses; [ asl20 ];
  };
}
