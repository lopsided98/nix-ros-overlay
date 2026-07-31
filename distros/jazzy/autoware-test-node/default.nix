
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, autoware-cmake, autoware-node, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-jazzy-autoware-test-node";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_test_node/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "da50d38235027d923b83363c5147e20f598fe6d0b07b5736178830684f727918";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  propagatedBuildInputs = [ autoware-node rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "Test package for Autoware Node.";
    license = with lib.licenses; [ asl20 ];
  };
}
