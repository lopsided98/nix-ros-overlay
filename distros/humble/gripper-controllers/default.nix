
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, control-msgs, control-toolbox, controller-interface, controller-manager, generate-parameter-library, hardware-interface, hardware-interface-testing, pluginlib, rclcpp, rclcpp-action, realtime-tools, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-humble-gripper-controllers";
  version = "2.37.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/humble/gripper_controllers/2.37.1-1.tar.gz";
    name = "2.37.1-1.tar.gz";
    sha256 = "3aaec5888e4c7106153ab5bbfbce0acc6ba3f03fb9b89e8ce2d563521c0e1712";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock controller-manager hardware-interface-testing ros2-control-test-assets ];
  propagatedBuildInputs = [ backward-ros control-msgs control-toolbox controller-interface generate-parameter-library hardware-interface pluginlib rclcpp rclcpp-action realtime-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The gripper_controllers package";
    license = with lib.licenses; [ asl20 ];
  };
}
