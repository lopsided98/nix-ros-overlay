
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, boost, catkin, tinyxml, rostest, urdfdom-headers, console-bridge, urdf, urdfdom-py }:
buildRosPackage {
  pname = "ros-melodic-srdfdom";
  version = "0.5.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/srdfdom-release/archive/release/melodic/srdfdom/0.5.1-0.tar.gz;
    sha256 = "97b4cf0327af9082df3270024ceaa89d6b577bb2cbc09a5b19838557189e96f1";
  };

  checkInputs = [ rostest ];
  propagatedBuildInputs = [ urdfdom-headers console-bridge boost tinyxml urdfdom-py ];
  nativeBuildInputs = [ urdfdom-headers console-bridge urdf cmake-modules boost catkin tinyxml urdfdom-py ];

  meta = {
    description = ''Parser for Semantic Robot Description Format (SRDF).'';
    #license = lib.licenses.BSD;
  };
}
