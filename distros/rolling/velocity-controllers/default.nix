
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, controller-manager, forward-command-controller, hardware-interface, hardware-interface-testing, pluginlib, rclcpp, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-rolling-velocity-controllers";
  version = "4.12.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/rolling/velocity_controllers/4.12.1-1.tar.gz";
    name = "4.12.1-1.tar.gz";
    sha256 = "2c6f7f9f2be5fdcdfcae862ec374a618a22a4b60e3a9c04bdb53c32a83cc2301";
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
