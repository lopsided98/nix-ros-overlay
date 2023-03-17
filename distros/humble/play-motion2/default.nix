
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, control-msgs, controller-manager, controller-manager-msgs, hardware-interface, joint-state-broadcaster, joint-trajectory-controller, launch-pal, launch-ros, launch-testing-ament-cmake, lifecycle-msgs, play-motion2-msgs, pluginlib, rclcpp, rclcpp-action, rclcpp-lifecycle, sensor-msgs, trajectory-msgs, xacro }:
buildRosPackage {
  pname = "ros-humble-play-motion2";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/play_motion2-release/archive/release/humble/play_motion2/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "3524c4c68a8e9e7861432747fb5ce6f30d0c80412006d6cbc583cd6dda206e97";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-index-cpp ament-lint-auto ament-lint-common controller-manager hardware-interface joint-state-broadcaster joint-trajectory-controller launch-pal launch-ros launch-testing-ament-cmake pluginlib xacro ];
  propagatedBuildInputs = [ control-msgs controller-manager-msgs lifecycle-msgs play-motion2-msgs rclcpp rclcpp-action rclcpp-lifecycle sensor-msgs trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Play a pre-recorded motion on a robot'';
    license = with lib.licenses; [ asl20 ];
  };
}
