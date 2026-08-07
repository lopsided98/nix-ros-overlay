
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, controller-manager, forward-command-controller, hardware-interface, hardware-interface-testing, pluginlib, rclcpp, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-humble-effort-controllers";
  version = "2.53.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/humble/effort_controllers/2.53.3-1.tar.gz";
    name = "2.53.3-1.tar.gz";
    sha256 = "1001b3147e9bf923dcaa827cd8bc64a2af0f0bef07f2a6d7338a12d4d16b5ebc";
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
