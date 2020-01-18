
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, roslaunch, rviz, warthog-description }:
buildRosPackage {
  pname = "ros-melodic-warthog-viz";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/warthog_desktop-release/archive/release/melodic/warthog_viz/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "627e058e9037beadb575229c7dadfc27003f278a83edb1177aa271629be1e6d1";
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
