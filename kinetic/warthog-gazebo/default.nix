
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, hector-gazebo-plugins, catkin, gazebo-plugins, warthog-control, joint-state-publisher, roslaunch, roscpp, warthog-description, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-kinetic-warthog-gazebo";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/warthog_simulator-release/archive/release/kinetic/warthog_gazebo/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "b00a633461e3473bf463858f821c3066a0232bd83c4663452f90456c1fd86945";
  };

  buildType = "catkin";
  buildInputs = [ gazebo-ros roslaunch roscpp ];
  propagatedBuildInputs = [ gazebo-ros hector-gazebo-plugins gazebo-plugins warthog-control joint-state-publisher roscpp warthog-description gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launchfiles to use Warthog in Gazebo.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
