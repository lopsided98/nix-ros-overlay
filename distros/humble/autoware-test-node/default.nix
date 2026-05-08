
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, autoware-cmake, autoware-node, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-humble-autoware-test-node";
  version = "1.8.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_test_node/1.8.0-3.tar.gz";
    name = "1.8.0-3.tar.gz";
    sha256 = "ae096e9fd427f238606dc485ecc8c19cb1771eeca2f722c4df507e42b6cea4d5";
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
