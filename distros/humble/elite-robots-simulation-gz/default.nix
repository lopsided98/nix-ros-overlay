
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, control-msgs, controller-manager, elite-robots-description, elite-robots-moveit-config, ign-ros2-control, joint-state-broadcaster, joint-state-publisher, joint-trajectory-controller, launch, launch-ros, position-controllers, python3Packages, rclpy, robot-state-publisher, ros-gz-sim, rviz2, sensor-msgs, trajectory-msgs, urdf, velocity-controllers, xacro }:
buildRosPackage {
  pname = "ros-humble-elite-robots-simulation-gz";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/EliteRobots/Elite_Robots_CS_ROS2_GZ_Simulation-release/archive/release/humble/elite_robots_simulation_gz/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "b7fedb50a7081d121e3c59c932471719fbd30f44053a0b7cd2042f1281b87000";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ builtin-interfaces control-msgs controller-manager elite-robots-description elite-robots-moveit-config ign-ros2-control joint-state-broadcaster joint-state-publisher joint-trajectory-controller launch launch-ros position-controllers python3Packages.pyyaml rclpy robot-state-publisher ros-gz-sim rviz2 sensor-msgs trajectory-msgs urdf velocity-controllers xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Example and configuration files for Gazebo simulation of Elite Robots robot manipulators.";
    license = with lib.licenses; [ asl20 ];
  };
}
