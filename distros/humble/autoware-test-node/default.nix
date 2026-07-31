
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, autoware-cmake, autoware-node, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-humble-autoware-test-node";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_test_node/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "f5477935ecc28d78a00dc2218c8bccdd1e25c16ff097b8f925a9bb51ccd52b12";
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
