
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_ignition-gazebo6, ament-cmake, ament-lint-auto, ament-lint-common, image-transport-plugins, robot-state-publisher, ros-gz-bridge, ros-gz-image, ros-gz-sim, rqt-image-view, rqt-plot, rqt-topic, rviz2, sdformat-urdf, xacro }:
buildRosPackage {
  pname = "ros-humble-ros-gz-sim-demos";
  version = "0.244.26-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/humble/ros_gz_sim_demos/0.244.26-1.tar.gz";
    name = "0.244.26-1.tar.gz";
    sha256 = "57ffad4b904315d6ed4196af965d39e782d476ee123cfdd778f4e65e0eb351bc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ _unresolved_ignition-gazebo6 image-transport-plugins robot-state-publisher ros-gz-bridge ros-gz-image ros-gz-sim rqt-image-view rqt-plot rqt-topic rviz2 sdformat-urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Demos using Gazebo Sim simulation with ROS.";
    license = with lib.licenses; [ asl20 ];
  };
}
