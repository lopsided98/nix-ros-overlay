
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ign-ros2-control, joint-state-publisher, launch, launch-ros, launch-testing-ament-cmake, launch-testing-ros, ros-gz-bridge, ros-gz-sim, rviz2, ur-controllers, ur-description, ur-moveit-config, urdf, xacro }:
buildRosPackage {
  pname = "ros-humble-ur-simulation-gz";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ur_simulation_gz-release/archive/release/humble/ur_simulation_gz/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "229cafdc3752713838bd26eb9d49760db58630bfa561604520c946c47dfa9cbf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest launch-testing-ament-cmake launch-testing-ros ];
  propagatedBuildInputs = [ ign-ros2-control joint-state-publisher launch launch-ros ros-gz-bridge ros-gz-sim rviz2 ur-controllers ur-description ur-moveit-config urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Example and configuration files for Gazebo simulation of UR manipulators.";
    license = with lib.licenses; [ bsd3 ];
  };
}
