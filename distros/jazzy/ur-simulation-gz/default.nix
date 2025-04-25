
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, gz-ros2-control, joint-state-publisher, launch, launch-ros, launch-testing-ament-cmake, launch-testing-ros, ros-gz-bridge, ros-gz-sim, rviz2, ur-controllers, ur-description, ur-moveit-config, urdf, urdfdom, xacro }:
buildRosPackage {
  pname = "ros-jazzy-ur-simulation-gz";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ur_simulation_gz-release/archive/release/jazzy/ur_simulation_gz/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "a066582dcc43b34aafbf169c0156ce473205801974292fa6fa7eac2fa87ea688";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest launch-testing-ament-cmake launch-testing-ros urdfdom xacro ];
  propagatedBuildInputs = [ gz-ros2-control joint-state-publisher launch launch-ros ros-gz-bridge ros-gz-sim rviz2 ur-controllers ur-description ur-moveit-config urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Example and configuration files for Gazebo simulation of UR manipulators.";
    license = with lib.licenses; [ bsd3 ];
  };
}
