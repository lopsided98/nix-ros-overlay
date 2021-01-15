
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher-gui, moose-description, roslaunch, rviz }:
buildRosPackage {
  pname = "ros-kinetic-moose-viz";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/moose_desktop-release/archive/release/kinetic/moose_viz/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "91271bed33ba95d9a6bed08b3d6bff77cd38b6a1203e520fc70c129cf670e1f6";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ joint-state-publisher-gui moose-description rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualization launchers and helpers for Moose.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
