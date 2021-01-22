
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, console-bridge, rostest, tinyxml-2, urdf, urdfdom-py }:
buildRosPackage {
  pname = "ros-noetic-srdfdom";
  version = "0.6.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/srdfdom-release/archive/release/noetic/srdfdom/0.6.2-1.tar.gz";
    name = "0.6.2-1.tar.gz";
    sha256 = "f7d787b4e320f1ad302bc111fe08fd78dd65cdf0246429bda041327c13827efc";
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
