
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, autoware-cmake, autoware-node, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-humble-autoware-test-node";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_test_node/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "f21e9b21e7fef7e1ce8ec03b1c9a9c7d6c1fe48e937be336266e5385313ae33a";
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
