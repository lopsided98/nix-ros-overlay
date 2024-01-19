
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ros-ign-bridge, ros-ign-gazebo-demos, ros-ign-image }:
buildRosPackage {
  pname = "ros-noetic-ros-ign";
  version = "0.111.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_ign-release/archive/release/noetic/ros_ign/0.111.2-1.tar.gz";
    name = "0.111.2-1.tar.gz";
    sha256 = "6dd1335671168ec83292a4d4a936807fb2e3d90e831f879e921c8baffc341a4b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ros-ign-bridge ros-ign-gazebo-demos ros-ign-image ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta-package containing interfaces for using ROS with <a href="https://ignitionrobotics.org">Ignition</a> simulation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
