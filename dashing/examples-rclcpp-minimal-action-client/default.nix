
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclcpp-action, rclcpp, example-interfaces, ament-cmake }:
buildRosPackage rec {
  pname = "ros-dashing-examples-rclcpp-minimal-action-client";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/dashing/examples_rclcpp_minimal_action_client/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "2b200a936b4439ae21641bcb317f66adeb5aa10981b9fb43956fda4892e12b91";
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
