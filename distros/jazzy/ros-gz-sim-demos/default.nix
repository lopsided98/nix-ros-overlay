
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, gz-sim-vendor, image-transport-plugins, robot-state-publisher, ros-gz-bridge, ros-gz-image, ros-gz-sim, rqt-image-view, rqt-plot, rqt-topic, rviz2, sdformat-urdf, xacro }:
buildRosPackage {
  pname = "ros-jazzy-ros-gz-sim-demos";
  version = "1.0.15-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/jazzy/ros_gz_sim_demos/1.0.15-1.tar.gz";
    name = "1.0.15-1.tar.gz";
    sha256 = "84a6f69727cb3c0788f9cb6bcacd51b94c5084688aa34bdeaf11e5348d97fde4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ gz-sim-vendor image-transport-plugins robot-state-publisher ros-gz-bridge ros-gz-image ros-gz-sim rqt-image-view rqt-plot rqt-topic rviz2 sdformat-urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Demos using Gazebo Sim simulation with ROS.";
    license = with lib.licenses; [ asl20 ];
  };
}
