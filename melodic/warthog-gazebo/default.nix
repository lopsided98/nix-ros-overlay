
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, hector-gazebo-plugins, catkin, gazebo-plugins, warthog-control, joint-state-publisher, roslaunch, roscpp, warthog-description, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-melodic-warthog-gazebo";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/warthog_simulator-release/archive/release/melodic/warthog_gazebo/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "ce59ffd6d91e7a09487b206b6ed2a26b0683d62eff6917ed26477f50240b3184";
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
