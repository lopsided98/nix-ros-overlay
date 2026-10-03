
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, control-msgs, controller-manager, elite-robots-description, elite-robots-moveit-config, ign-ros2-control, joint-state-broadcaster, joint-state-publisher, joint-trajectory-controller, launch, launch-ros, position-controllers, python3Packages, rclpy, robot-state-publisher, ros-gz-bridge, ros-gz-sim, rosgraph-msgs, rviz2, sensor-msgs, trajectory-msgs, urdf, velocity-controllers, xacro }:
buildRosPackage {
  pname = "ros-humble-elite-robots-simulation-gz";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/EliteRobots/Elite_Robots_CS_ROS2_GZ_Simulation-release/archive/release/humble/elite_robots_simulation_gz/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "14dfb384c9dd8e2a18749be84e9596b5b4c5165fd693a20b29eb5c302e5dec74";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ builtin-interfaces control-msgs controller-manager elite-robots-description elite-robots-moveit-config ign-ros2-control joint-state-broadcaster joint-state-publisher joint-trajectory-controller launch launch-ros position-controllers python3Packages.pyyaml rclpy robot-state-publisher ros-gz-bridge ros-gz-sim rosgraph-msgs rviz2 sensor-msgs trajectory-msgs urdf velocity-controllers xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Example and configuration files for Gazebo simulation of Elite Robots robot manipulators.";
    license = with lib.licenses; [ asl20 ];
  };
}
