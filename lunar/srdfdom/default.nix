
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, boost, catkin, tinyxml, rostest, urdfdom-headers, console-bridge, urdf, urdfdom-py }:
buildRosPackage {
  pname = "ros-lunar-srdfdom";
  version = "0.4.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/srdfdom-release/archive/release/lunar/srdfdom/0.4.2-0.tar.gz;
    sha256 = "17325367e98333f0c2ad7c987606745c19b8dccbc0945b9b73bce601f49c2988";
  };

  buildInputs = [ urdfdom-headers console-bridge urdf cmake-modules boost tinyxml urdfdom-py ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ urdfdom-headers console-bridge boost tinyxml urdfdom-py ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Parser for Semantic Robot Description Format (SRDF).'';
    #license = lib.licenses.BSD;
  };
}
