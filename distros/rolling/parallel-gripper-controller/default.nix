
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, control-msgs, control-toolbox, controller-interface, controller-manager, generate-parameter-library, hardware-interface, pluginlib, rclcpp, rclcpp-action, realtime-tools, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-rolling-parallel-gripper-controller";
  version = "4.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/rolling/parallel_gripper_controller/4.13.0-1.tar.gz";
    name = "4.13.0-1.tar.gz";
    sha256 = "27bc71cc04d5ea25288983707ee81e323423b179d9b6c49c5688e5a56e65155f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock controller-manager ros2-control-test-assets ];
  propagatedBuildInputs = [ backward-ros control-msgs control-toolbox controller-interface generate-parameter-library hardware-interface pluginlib rclcpp rclcpp-action realtime-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The parallel_gripper_controller package";
    license = with lib.licenses; [ asl20 ];
  };
}