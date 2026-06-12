
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, gz-sim-vendor, image-transport-plugins, marine-acoustic-msgs, robot-state-publisher, ros-gz-bridge, ros-gz-image, ros-gz-sim, rqt-image-view, rqt-plot, rqt-topic, rviz-imu-plugin, rviz2, sdformat-urdf, tf2-ros, xacro }:
buildRosPackage {
  pname = "ros-kilted-ros-gz-sim-demos";
  version = "2.1.17-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/kilted/ros_gz_sim_demos/2.1.17-1.tar.gz";
    name = "2.1.17-1.tar.gz";
    sha256 = "7065a208755af40d4640d8d8c4e5000002430f01532c04580c82d25c8ebe0a2b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ gz-sim-vendor image-transport-plugins marine-acoustic-msgs robot-state-publisher ros-gz-bridge ros-gz-image ros-gz-sim rqt-image-view rqt-plot rqt-topic rviz-imu-plugin rviz2 sdformat-urdf tf2-ros xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Demos using Gazebo Sim simulation with ROS.";
    license = with lib.licenses; [ asl20 ];
  };
}
