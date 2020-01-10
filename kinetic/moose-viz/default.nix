
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, moose-description, roslaunch, rviz }:
buildRosPackage {
  pname = "ros-kinetic-moose-viz";
  version = "0.1.0-r3";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/moose_desktop-release/archive/release/kinetic/moose_viz/0.1.0-3.tar.gz";
    name = "0.1.0-3.tar.gz";
    sha256 = "42df5fe707b9fe28fa313400712458cf3d4c1bbb9418725371646d93d6240670";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ joint-state-publisher moose-description rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualization launchers and helpers for Moose.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
