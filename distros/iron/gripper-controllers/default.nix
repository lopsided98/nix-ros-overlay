
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, control-msgs, control-toolbox, controller-interface, controller-manager, generate-parameter-library, hardware-interface, pluginlib, rclcpp, rclcpp-action, realtime-tools, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-iron-gripper-controllers";
  version = "3.19.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/iron/gripper_controllers/3.19.2-1.tar.gz";
    name = "3.19.2-1.tar.gz";
    sha256 = "8af95bc04d74c9d9f7a9c61b40b3952b784d5c18c0e14493be7236e8e175cb83";
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
