
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, autoware-cmake, autoware-node, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-humble-autoware-test-node";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_test_node/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "75f7397819ed2024d8dc2d67d4e0ab6df54746a5162f7e3fd1f94f7651492aea";
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
