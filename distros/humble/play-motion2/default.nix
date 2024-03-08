
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, control-msgs, controller-manager, controller-manager-msgs, hardware-interface, joint-state-broadcaster, joint-trajectory-controller, launch, launch-pal, launch-ros, launch-testing-ament-cmake, lifecycle-msgs, moveit-ros-planning-interface, play-motion2-msgs, pluginlib, rclcpp, rclcpp-action, rclcpp-lifecycle, robot-state-publisher, sensor-msgs, trajectory-msgs, xacro }:
buildRosPackage {
  pname = "ros-humble-play-motion2";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/play_motion2-release/archive/release/humble/play_motion2/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "9ad191607d2d2d58ff1146948b311723ff049021f1558ad7e3252286d90fe2e3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-cmake-gtest ament-index-cpp ament-lint-auto ament-lint-common controller-manager hardware-interface joint-state-broadcaster joint-trajectory-controller launch-pal launch-testing-ament-cmake pluginlib robot-state-publisher xacro ];
  propagatedBuildInputs = [ control-msgs controller-manager-msgs launch launch-ros lifecycle-msgs moveit-ros-planning-interface play-motion2-msgs rclcpp rclcpp-action rclcpp-lifecycle sensor-msgs trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Play a pre-recorded motion on a robot'';
    license = with lib.licenses; [ asl20 ];
  };
}
