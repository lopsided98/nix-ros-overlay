
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro }:
buildRosPackage {
  pname = "ros-noetic-rm-description";
  version = "0.1.1-r5";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_control-release/archive/release/noetic/rm_description/0.1.1-5.tar.gz";
    name = "0.1.1-5.tar.gz";
    sha256 = "9efff0393a8fd9a0ad6fe81a918f2ab1abaa31a2684bddf8bae58be2ffe9bd72";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RoboMaster robot description files'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
