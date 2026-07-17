
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, gz-ros2-control, joint-state-broadcaster, joint-trajectory-controller, launch-testing, launch-testing-ament-cmake, robot-state-publisher, ros-gz-bridge, ros-gz-sim, ros2run, std-msgs, urdf, xacro }:
buildRosPackage {
  pname = "ros-humble-kuka-gazebo";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_robot_descriptions-release/archive/release/humble/kuka_gazebo/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "4ef6aa4ac9ec5c5f870ce735c9a1d98935fc016aab0398dfee9231f63ac2ed6c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ launch-testing launch-testing-ament-cmake ros2run ];
  propagatedBuildInputs = [ controller-manager gz-ros2-control joint-state-broadcaster joint-trajectory-controller robot-state-publisher ros-gz-bridge ros-gz-sim std-msgs urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A helper package for Gazebo support with KUKA robots";
    license = with lib.licenses; [ asl20 ];
  };
}
