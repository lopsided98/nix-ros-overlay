
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, control-msgs, control-toolbox, controller-interface, controller-manager, generate-parameter-library, hardware-interface, pluginlib, rclcpp, rclcpp-action, realtime-tools, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-rolling-gripper-controllers";
  version = "3.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/rolling/gripper_controllers/3.13.0-1.tar.gz";
    name = "3.13.0-1.tar.gz";
    sha256 = "5d97fe3abff0639d4cd57638a087c4a0151201773885064051c61770534ef968";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock controller-manager ros2-control-test-assets ];
  propagatedBuildInputs = [ backward-ros control-msgs control-toolbox controller-interface generate-parameter-library hardware-interface pluginlib rclcpp rclcpp-action realtime-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The gripper_controllers package'';
    license = with lib.licenses; [ asl20 ];
  };
}
