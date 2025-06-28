
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, controller-manager, forward-command-controller, hardware-interface, hardware-interface-testing, pluginlib, rclcpp, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-humble-effort-controllers";
  version = "2.47.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/humble/effort_controllers/2.47.0-1.tar.gz";
    name = "2.47.0-1.tar.gz";
    sha256 = "c6d752722f77b7175c7d6c2e2e30d24e3a10ae49512e08256b2f4946f3863f61";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock controller-manager hardware-interface hardware-interface-testing ros2-control-test-assets ];
  propagatedBuildInputs = [ backward-ros forward-command-controller pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Generic controller for forwarding commands.";
    license = with lib.licenses; [ asl20 ];
  };
}
