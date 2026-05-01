
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, gz-sim-vendor, image-transport-plugins, marine-acoustic-msgs, robot-state-publisher, ros-gz-bridge, ros-gz-image, ros-gz-sim, rqt-image-view, rqt-plot, rqt-topic, rviz-imu-plugin, rviz2, sdformat-urdf, tf2-ros, xacro }:
buildRosPackage {
  pname = "ros-lyrical-ros-gz-sim-demos";
  version = "3.0.8-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/lyrical/ros_gz_sim_demos/3.0.8-3.tar.gz";
    name = "3.0.8-3.tar.gz";
    sha256 = "e8f8dc03c006fe270e9f7a9a48e4b58f5fb4ad5ae2881c4db4346faa211e5e98";
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
