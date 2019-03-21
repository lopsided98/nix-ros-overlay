
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, heron-description, rviz, roslaunch, joint-state-publisher }:
buildRosPackage {
  pname = "ros-kinetic-heron-viz";
  version = "0.0.3";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/heron_desktop-release/archive/release/kinetic/heron_viz/0.0.3-0.tar.gz;
    sha256 = "b7620ebe892cc9b2442770c55bdb90c5953236cfdad5fbaf8165c7a8b3c01f62";
  };

  propagatedBuildInputs = [ rviz joint-state-publisher heron-description ];
  nativeBuildInputs = [ roslaunch catkin ];

  meta = {
    description = ''Visualization and rviz helpers for Heron.'';
    #license = lib.licenses.BSD;
  };
}
