
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, control-msgs, controller-manager, controller-manager-msgs, hardware-interface, joint-state-broadcaster, joint-trajectory-controller, launch, launch-pal, launch-ros, launch-testing-ament-cmake, lifecycle-msgs, moveit-ros-planning-interface, play-motion2-msgs, pluginlib, rclcpp, rclcpp-action, rclcpp-lifecycle, robot-state-publisher, sensor-msgs, trajectory-msgs, xacro }:
buildRosPackage {
  pname = "ros-humble-play-motion2";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/play_motion2-release/archive/release/humble/play_motion2/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "3fa389c591d9c605bb4d3adcde44f4d585d700ecef16d743e159d1192667d822";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-cmake-gtest ament-index-cpp ament-lint-auto ament-lint-common controller-manager hardware-interface joint-state-broadcaster joint-trajectory-controller launch-pal launch-testing-ament-cmake pluginlib robot-state-publisher xacro ];
  propagatedBuildInputs = [ control-msgs controller-manager-msgs launch launch-ros lifecycle-msgs moveit-ros-planning-interface play-motion2-msgs rclcpp rclcpp-action rclcpp-lifecycle sensor-msgs trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Play a pre-recorded motion on a robot";
    license = with lib.licenses; [ asl20 ];
  };
}
