
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, controller-manager, franka-description, franka-hardware, franka-robot-state-broadcaster, joint-state-broadcaster, joint-state-publisher, robot-state-publisher, rviz2, xacro }:
buildRosPackage {
  pname = "ros-humble-franka-bringup";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/franka_ros2-release/archive/release/humble/franka_bringup/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "e1e30a6ed3c631359c26935f8574cf8557bf850a01b8e2bd74548d34139651fd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ controller-manager franka-description franka-hardware franka-robot-state-broadcaster joint-state-broadcaster joint-state-publisher robot-state-publisher rviz2 xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package with launch files and run-time configurations for using Franka Robotics research robots with ros2_control";
    license = with lib.licenses; [ asl20 ];
  };
}
