
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, roslaunch, rviz, warthog-description }:
buildRosPackage {
  pname = "ros-kinetic-warthog-viz";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/warthog_desktop-release/archive/release/kinetic/warthog_viz/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "f622e14b667b7d14a1db9692e8faee8bd5d7987793d383a2a5e30ada2210fdab";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ joint-state-publisher rviz warthog-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualization launchers and helpers for Warthog.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
