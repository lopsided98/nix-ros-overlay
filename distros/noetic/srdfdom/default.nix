
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, console-bridge, rostest, tinyxml-2, urdf, urdfdom-py }:
buildRosPackage {
  pname = "ros-noetic-srdfdom";
  version = "0.6.1-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/srdfdom-release/archive/release/noetic/srdfdom/0.6.1-2.tar.gz";
    name = "0.6.1-2.tar.gz";
    sha256 = "13502c73f611fab5f662060684966a1f07731a67b6ed0e618f7b6a592c018c14";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules console-bridge ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ boost tinyxml-2 urdf urdfdom-py ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Parser for Semantic Robot Description Format (SRDF).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
