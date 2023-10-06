
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, control-msgs, controller-manager, controller-manager-msgs, hardware-interface, joint-state-broadcaster, joint-trajectory-controller, launch-pal, launch-ros, launch-testing-ament-cmake, lifecycle-msgs, play-motion2-msgs, pluginlib, rclcpp, rclcpp-action, rclcpp-lifecycle, robot-state-publisher, sensor-msgs, trajectory-msgs, xacro }:
buildRosPackage {
  pname = "ros-humble-play-motion2";
  version = "0.0.10-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/play_motion2-release/archive/release/humble/play_motion2/0.0.10-1.tar.gz";
    name = "0.0.10-1.tar.gz";
    sha256 = "0e6845cbb7f6b150967e4f13d86ccebb358d2174c5a8474cc5753aa19c1cf013";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-cmake-gtest ament-index-cpp ament-lint-auto ament-lint-common controller-manager hardware-interface joint-state-broadcaster joint-trajectory-controller launch-pal launch-ros launch-testing-ament-cmake pluginlib robot-state-publisher xacro ];
  propagatedBuildInputs = [ control-msgs controller-manager-msgs lifecycle-msgs play-motion2-msgs rclcpp rclcpp-action rclcpp-lifecycle sensor-msgs trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Play a pre-recorded motion on a robot'';
    license = with lib.licenses; [ asl20 ];
  };
}
