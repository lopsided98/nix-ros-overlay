
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, gz-sim-vendor, image-transport-plugins, marine-acoustic-msgs, robot-state-publisher, ros-gz-bridge, ros-gz-image, ros-gz-sim, rqt-image-view, rqt-plot, rqt-topic, rviz-imu-plugin, rviz2, sdformat-urdf, tf2-ros, xacro }:
buildRosPackage {
  pname = "ros-lyrical-ros-gz-sim-demos";
  version = "3.0.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/lyrical/ros_gz_sim_demos/3.0.11-1.tar.gz";
    name = "3.0.11-1.tar.gz";
    sha256 = "79cc15f444bfa2e5722eeb69c1b2ecb75a14d1c5c1498bb2b374e48d0dedbadf";
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
