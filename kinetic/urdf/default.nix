
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, pluginlib, catkin, rosconsole-bridge, tinyxml, urdfdom, urdf-parser-plugin, rostest, urdfdom-headers, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-urdf";
  version = "1.12.12";

  src = fetchurl {
    url = https://github.com/ros-gbp/urdf-release/archive/release/kinetic/urdf/1.12.12-0.tar.gz;
    sha256 = "3ef94e4c96e189e1df3b4e57d0309bd1bd76a7a28a674a5944e26b8fd674cb33";
  };

  checkInputs = [ rostest ];
  propagatedBuildInputs = [ urdfdom-headers tinyxml pluginlib roscpp rosconsole-bridge urdfdom ];
  nativeBuildInputs = [ pluginlib cmake-modules catkin tinyxml rosconsole-bridge urdfdom urdf-parser-plugin urdfdom-headers roscpp ];

  meta = {
    description = ''This package contains a C++ parser for the Unified Robot Description
    Format (URDF), which is an XML format for representing a robot model.
    The code API of the parser has been through our review process and will remain
    backwards compatible in future releases.'';
    #license = lib.licenses.BSD;
  };
}
