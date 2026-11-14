
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, gz-ros2-control, joint-state-publisher, launch, launch-ros, launch-testing-ament-cmake, launch-testing-ros, ros-gz-bridge, ros-gz-sim, rviz2, ur-controllers, ur-description, ur-moveit-config, urdf, urdfdom, xacro }:
buildRosPackage {
  pname = "ros-kilted-ur-simulation-gz";
  version = "2.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ur_simulation_gz-release/archive/release/kilted/ur_simulation_gz/2.6.0-1.tar.gz";
    name = "2.6.0-1.tar.gz";
    sha256 = "65461f2fd7da1f9caf742ecafab614a662f361e18880e90a0d2413241201aa9c";
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
