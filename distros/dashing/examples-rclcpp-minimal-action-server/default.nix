
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, example-interfaces, rclcpp, rclcpp-action }:
buildRosPackage {
  pname = "ros-dashing-examples-rclcpp-minimal-action-server";
  version = "0.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/dashing/examples_rclcpp_minimal_action_server/0.7.5-1.tar.gz";
    name = "0.7.5-1.tar.gz";
    sha256 = "6b74af37c209800d8e11f192e24174ad8ba51cc2c710fdbcdec19c6738b27c98";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ example-interfaces rclcpp rclcpp-action ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Minimal action server examples'';
    license = with lib.licenses; [ asl20 ];
  };
}
