
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, control-msgs, controller-interface, controller-manager, controller-manager-msgs, hardware-interface, joint-state-broadcaster, joint-trajectory-controller, launch, launch-ros, launch-testing-ament-cmake, lifecycle-msgs, moveit-ros-planning-interface, play-motion2-msgs, pluginlib, rclcpp, rclcpp-action, rclcpp-lifecycle, realtime-tools, robot-state-publisher, sensor-msgs, std-msgs, trajectory-msgs, xacro }:
buildRosPackage {
  pname = "ros-humble-play-motion2";
  version = "1.5.3-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/play_motion2-release/archive/release/humble/play_motion2/1.5.3-1.tar.gz";
    name = "1.5.3-1.tar.gz";
    sha256 = "93a5d5894f72a5e16420a86b2fb3cc75f88656617ec453d83d2d544e5f74656b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-cmake-gtest ament-index-cpp ament-lint-auto ament-lint-common controller-interface controller-manager hardware-interface joint-state-broadcaster joint-trajectory-controller launch-testing-ament-cmake pluginlib realtime-tools robot-state-publisher sensor-msgs xacro ];
  propagatedBuildInputs = [ control-msgs controller-manager-msgs launch launch-ros lifecycle-msgs moveit-ros-planning-interface play-motion2-msgs rclcpp rclcpp-action rclcpp-lifecycle sensor-msgs std-msgs trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Play a pre-recorded motion on a robot";
    license = with lib.licenses; [ asl20 ];
  };
}
