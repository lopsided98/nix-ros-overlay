
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, launch, launch-ros, launch-yaml, mocap4r2-gz-plugin, mocap4r2-marker-viz, mocap4r2-motion-tools, mocap4r2-optitrack-driver, mocap4r2-robot-gt, ros-gz-bridge, ros-gz-sim, rviz2 }:
buildRosPackage {
  pname = "ros-kilted-mocap4r2-gz-demos";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/MOCAP4ROS2-Project/mocap4ros2_gazebo-release/archive/release/kilted/mocap4r2_gz_demos/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "7ebe41baaa4400dbe9674cc91d41f5705fe2cf167851c3616b5cd8f801991e81";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ launch launch-ros launch-yaml mocap4r2-gz-plugin mocap4r2-marker-viz mocap4r2-motion-tools mocap4r2-optitrack-driver mocap4r2-robot-gt ros-gz-bridge ros-gz-sim rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Gazebo demos of MOCAP4ROS2: robot ground truth and human motion in a simulated mocap room, streamed as MOCAP4ROS2 or as OptiTrack Motive";
    license = with lib.licenses; [ asl20 ];
  };
}
