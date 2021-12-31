
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, controller-interface, controller-manager, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-test-assets, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-forward-command-controller";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/galactic/forward_command_controller/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "5d014615253d64c560aad1d13d145c9f72144466e5a034199b956dbfb8ed284a";
  };

  buildType = "ament_cmake";
  buildInputs = [ pluginlib ];
  checkInputs = [ ament-cmake-gmock controller-manager ros2-control-test-assets ];
  propagatedBuildInputs = [ controller-interface hardware-interface rclcpp rclcpp-lifecycle realtime-tools std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Generic controller for forwarding commands.'';
    license = with lib.licenses; [ asl20 ];
  };
}
