
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, pluginlib, rosconsole-bridge, roscpp, rostest, tinyxml, tinyxml-2, urdf-parser-plugin, urdfdom, urdfdom-headers }:
buildRosPackage {
  pname = "ros-melodic-urdf";
  version = "1.13.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/urdf-release/archive/release/melodic/urdf/1.13.2-1.tar.gz";
    name = "1.13.2-1.tar.gz";
    sha256 = "476b4598a2a6d84da0a60fe3436d7f0b7fc8270c977b70eca24201f37529dbc3";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules urdf-parser-plugin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ pluginlib rosconsole-bridge roscpp tinyxml tinyxml-2 urdfdom urdfdom-headers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a C++ parser for the Unified Robot Description
    Format (URDF), which is an XML format for representing a robot model.
    The code API of the parser has been through our review process and will remain
    backwards compatible in future releases.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
