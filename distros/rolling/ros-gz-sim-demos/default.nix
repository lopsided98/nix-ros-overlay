
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, gz-sim-vendor, image-transport-plugins, robot-state-publisher, ros-gz-bridge, ros-gz-image, ros-gz-sim, rqt-image-view, rqt-plot, rqt-topic, rviz2, sdformat-urdf, xacro }:
buildRosPackage {
  pname = "ros-rolling-ros-gz-sim-demos";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/rolling/ros_gz_sim_demos/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "b70c3c5cc52a55d8bbcb72c403c53efa1ad58337e5bd46bfc28dd45000099e52";
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
