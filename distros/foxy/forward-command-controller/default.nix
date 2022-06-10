
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, controller-interface, controller-manager, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-test-assets, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-forward-command-controller";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/foxy/forward_command_controller/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "75413c24ffd5bcb853f581574387a04b22e12e1953e6a541690b3ecdca8b6071";
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
