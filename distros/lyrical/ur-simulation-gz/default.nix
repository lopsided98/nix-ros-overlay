
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, gz-ros2-control, joint-state-publisher, launch, launch-ros, launch-testing-ament-cmake, launch-testing-ros, ros-gz-bridge, ros-gz-sim, rviz2, ur-controllers, ur-description, ur-moveit-config, urdf, urdfdom, xacro }:
buildRosPackage {
  pname = "ros-lyrical-ur-simulation-gz";
  version = "2.5.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ur_simulation_gz-release/archive/release/lyrical/ur_simulation_gz/2.5.0-3.tar.gz";
    name = "2.5.0-3.tar.gz";
    sha256 = "4c4d928a1087c5c8a056e182d06f3186a13e25234846f5426f375a8fad9c5a43";
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
