
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rviz, roslaunch, joint-state-publisher, jackal-description }:
buildRosPackage {
  pname = "ros-kinetic-jackal-viz";
  version = "0.3.2";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/jackal_desktop-release/archive/release/kinetic/jackal_viz/0.3.2-0.tar.gz;
    sha256 = "b69377b82726124fa24f38c0c2ffda040469127e0073a33f83b0cbfa6ba8b38d";
  };

  propagatedBuildInputs = [ rviz joint-state-publisher jackal-description ];
  nativeBuildInputs = [ roslaunch catkin ];

  meta = {
    description = ''Visualization launchers and helpers for Jackal.'';
    #license = lib.licenses.BSD;
  };
}
