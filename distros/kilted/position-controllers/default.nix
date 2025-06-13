
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, controller-manager, forward-command-controller, hardware-interface, hardware-interface-testing, pluginlib, rclcpp, ros2-control-cmake, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-kilted-position-controllers";
  version = "5.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/kilted/position_controllers/5.1.0-1.tar.gz";
    name = "5.1.0-1.tar.gz";
    sha256 = "1a490d21b9fcb2a3116325f2630eb1863f603c4baa8d7b08ee348d042ca46580";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock controller-manager hardware-interface hardware-interface-testing ros2-control-test-assets ];
  propagatedBuildInputs = [ backward-ros forward-command-controller pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Generic position controller for forwarding position commands.";
    license = with lib.licenses; [ asl20 ];
  };
}
