
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, gz-sim-vendor, image-transport-plugins, robot-state-publisher, ros-gz-bridge, ros-gz-image, ros-gz-sim, rqt-image-view, rqt-plot, rqt-topic, rviz2, sdformat-urdf, xacro }:
buildRosPackage {
  pname = "ros-jazzy-ros-gz-sim-demos";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/jazzy/ros_gz_sim_demos/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "1e7a91e83be14cd28deadcce9d43d27970ef3d063feeb0561cddfc2e5aff3d4e";
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
