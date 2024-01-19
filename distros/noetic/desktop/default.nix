
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, common-tutorials, geometry-tutorials, joint-state-publisher-gui, robot, ros-tutorials, roslint, urdf-tutorial, visualization-tutorials, viz }:
buildRosPackage {
  pname = "ros-noetic-desktop";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/metapackages-release/archive/release/noetic/desktop/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "d7ee8d0df916f35d34edf1c1ef3449378ed5ce7a75657362e1dd523b7066f2f7";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ angles common-tutorials geometry-tutorials joint-state-publisher-gui robot ros-tutorials roslint urdf-tutorial visualization-tutorials viz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage to aggregate several packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
