
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, warthog-description, catkin, rviz, roslaunch, joint-state-publisher }:
buildRosPackage {
  pname = "ros-kinetic-warthog-viz";
  version = "0.0.1-r1";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/warthog_desktop-release/archive/release/kinetic/warthog_viz/0.0.1-1.tar.gz;
    sha256 = "f622e14b667b7d14a1db9692e8faee8bd5d7987793d383a2a5e30ada2210fdab";
  };

  propagatedBuildInputs = [ joint-state-publisher warthog-description rviz ];
  nativeBuildInputs = [ roslaunch catkin ];

  meta = {
    description = ''Visualization launchers and helpers for Warthog.'';
    #license = lib.licenses.BSD;
  };
}
