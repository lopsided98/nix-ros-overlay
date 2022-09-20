
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher-gui, moose-description, roslaunch, rviz }:
buildRosPackage {
  pname = "ros-melodic-moose-viz";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/moose_desktop-release/archive/release/melodic/moose_viz/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "cefa5a0b9eb0d80c77df8bfa401189d41c2db797467e57e5ac77886760716829";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ joint-state-publisher-gui moose-description rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualization launchers and helpers for Moose.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
