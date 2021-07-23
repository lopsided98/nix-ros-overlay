
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ros-ign-bridge, ros-ign-gazebo-demos, ros-ign-image }:
buildRosPackage {
  pname = "ros-noetic-ros-ign";
  version = "0.111.1-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_ign-release/archive/release/noetic/ros_ign/0.111.1-2.tar.gz";
    name = "0.111.1-2.tar.gz";
    sha256 = "84789b6bdd9557c10bf47b65f855476e15db0ff69de6541857b93ffee9e54470";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ros-ign-bridge ros-ign-gazebo-demos ros-ign-image ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta-package containing interfaces for using ROS with <a href="https://ignitionrobotics.org">Ignition</a> simulation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
