
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-index-cpp, ament-lint-auto, ament-lint-common, backward-ros, control-msgs, controller-interface, controller-manager, controller-manager-msgs, hardware-interface, joint-state-broadcaster, joint-trajectory-controller, launch, launch-ros, launch-testing-ament-cmake, lifecycle-msgs, moveit-ros-planning-interface, play-motion2-msgs, pluginlib, rclcpp, rclcpp-action, rclcpp-components, rclcpp-lifecycle, realtime-tools, robot-state-publisher, sensor-msgs, std-msgs, trajectory-msgs, xacro }:
buildRosPackage {
  pname = "ros-humble-play-motion2";
  version = "1.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/play_motion2-release/archive/release/humble/play_motion2/1.8.2-1.tar.gz";
    name = "1.8.2-1.tar.gz";
    sha256 = "d577e5b1fef5ae0be41dc54621197d8f9592221d1bf9658aca6a1843dd58e074";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ament-cmake-python ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-index-cpp ament-lint-auto ament-lint-common controller-interface controller-manager hardware-interface joint-state-broadcaster joint-trajectory-controller launch-testing-ament-cmake pluginlib realtime-tools robot-state-publisher sensor-msgs xacro ];
  propagatedBuildInputs = [ backward-ros control-msgs controller-manager-msgs launch launch-ros lifecycle-msgs moveit-ros-planning-interface play-motion2-msgs rclcpp rclcpp-action rclcpp-components rclcpp-lifecycle sensor-msgs std-msgs trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ament-cmake-python ];

  meta = {
    description = "Play a pre-recorded motion on a robot";
    license = with lib.licenses; [ asl20 ];
  };
}
