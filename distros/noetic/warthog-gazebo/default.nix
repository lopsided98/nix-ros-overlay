
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-plugins, gazebo-ros, gazebo-ros-control, hector-gazebo-plugins, joint-state-publisher, roscpp, roslaunch, warthog-control, warthog-description }:
buildRosPackage {
  pname = "ros-noetic-warthog-gazebo";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/warthog_simulator-release/archive/release/noetic/warthog_gazebo/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "2d0a7d1869c0d46e0c2a643211ac031ae61e713a3ebec5fd2a77da3b022f4946";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ gazebo-plugins gazebo-ros gazebo-ros-control hector-gazebo-plugins joint-state-publisher roscpp warthog-control warthog-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launchfiles to use Warthog in Gazebo.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
