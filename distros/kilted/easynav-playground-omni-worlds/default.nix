
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-lint-auto, ament-lint-common, controller-manager, easynav-playground-omni-description, eigen, forward-command-controller, geometry-msgs, gz-sim-vendor, joint-state-broadcaster, launch, launch-ros, launch-yaml, nav-msgs, python3, rclcpp, rclpy, robot-state-publisher, ros-gz-bridge, ros-gz-sim, rviz2, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs, tf2-ros, xacro }:
buildRosPackage {
  pname = "ros-kilted-easynav-playground-omni-worlds";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_playgrounds-release/archive/release/kilted/easynav_playground_omni_worlds/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "fc11c0619d3e8976413801d6d8043f1ba18478f0b6eb78421b9288d26bc4c96c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-copyright ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ controller-manager easynav-playground-omni-description eigen forward-command-controller geometry-msgs gz-sim-vendor joint-state-broadcaster launch launch-ros launch-yaml nav-msgs python3 rclcpp rclpy robot-state-publisher ros-gz-bridge ros-gz-sim rviz2 sensor-msgs std-msgs tf2 tf2-geometry-msgs tf2-ros xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Gazebo (Harmonic or newer) simulation of omnidirectional robots for the EasyNav playgrounds: two mazes and their maps, the kinematics node, and the launcher that spawns the chosen robot with its controllers and the ROS-Gazebo bridge.";
    license = with lib.licenses; [ mit asl20 ];
  };
}
