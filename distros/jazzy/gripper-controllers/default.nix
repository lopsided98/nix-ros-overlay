
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, control-msgs, control-toolbox, controller-interface, controller-manager, generate-parameter-library, hardware-interface, hardware-interface-testing, pluginlib, rclcpp, rclcpp-action, realtime-tools, ros2-control-cmake, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-jazzy-gripper-controllers";
  version = "4.27.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/jazzy/gripper_controllers/4.27.0-1.tar.gz";
    name = "4.27.0-1.tar.gz";
    sha256 = "538946a941cb5b1b6be9e99934e92bae43b19bb91df38983b7808d352d50b611";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock controller-manager hardware-interface-testing ros2-control-test-assets ];
  propagatedBuildInputs = [ backward-ros control-msgs control-toolbox controller-interface generate-parameter-library hardware-interface pluginlib rclcpp rclcpp-action realtime-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The gripper_controllers package";
    license = with lib.licenses; [ asl20 ];
  };
}
