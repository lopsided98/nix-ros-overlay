
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, controller-interface, controller-manager, generate-parameter-library, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-test-assets, std-msgs }:
buildRosPackage {
  pname = "ros-iron-forward-command-controller";
  version = "3.19.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/iron/forward_command_controller/3.19.1-1.tar.gz";
    name = "3.19.1-1.tar.gz";
    sha256 = "c03e1dc2afcbfae1523b7a2a37edcf2aebde4022e7172e87d8fa0a335a573d68";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock controller-manager ros2-control-test-assets ];
  propagatedBuildInputs = [ backward-ros controller-interface generate-parameter-library hardware-interface pluginlib rclcpp rclcpp-lifecycle realtime-tools std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Generic controller for forwarding commands.'';
    license = with lib.licenses; [ asl20 ];
  };
}
