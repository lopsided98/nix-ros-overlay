
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, urdfdom-headers, urdf, urdfdom-py, cmake-modules, catkin, tinyxml, console-bridge, rostest }:
buildRosPackage {
  pname = "ros-kinetic-srdfdom";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/srdfdom-release/archive/release/kinetic/srdfdom/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "2f7dfc30af56d54c3ca610f648ab68face2697f3d4e135410b749dae0d5d0d80";
  };

  buildType = "catkin";
  buildInputs = [ boost urdfdom-headers urdf urdfdom-py cmake-modules tinyxml console-bridge ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ boost urdfdom-headers urdfdom-py tinyxml console-bridge ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Parser for Semantic Robot Description Format (SRDF).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
