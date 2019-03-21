
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, boost, catkin, tinyxml, rostest, urdfdom-headers, console-bridge, urdf, urdfdom-py }:
buildRosPackage {
  pname = "ros-kinetic-srdfdom";
  version = "0.4.2-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/srdfdom-release/archive/release/kinetic/srdfdom/0.4.2-1.tar.gz;
    sha256 = "2f7dfc30af56d54c3ca610f648ab68face2697f3d4e135410b749dae0d5d0d80";
  };

  checkInputs = [ rostest ];
  propagatedBuildInputs = [ urdfdom-headers console-bridge boost tinyxml urdfdom-py ];
  nativeBuildInputs = [ urdfdom-headers console-bridge urdf cmake-modules boost catkin tinyxml urdfdom-py ];

  meta = {
    description = ''Parser for Semantic Robot Description Format (SRDF).'';
    #license = lib.licenses.BSD;
  };
}
