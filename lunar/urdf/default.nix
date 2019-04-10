
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, pluginlib, catkin, rosconsole-bridge, tinyxml, urdfdom, urdf-parser-plugin, rostest, urdfdom-headers, roscpp }:
buildRosPackage {
  pname = "ros-lunar-urdf";
  version = "1.12.12";

  src = fetchurl {
    url = https://github.com/ros-gbp/urdf-release/archive/release/lunar/urdf/1.12.12-0.tar.gz;
    sha256 = "215d05cb557935c5e9f60a34278d34cb12729efcdecf15e2029b91d9d7952999";
  };

  buildInputs = [ urdfdom-headers tinyxml pluginlib cmake-modules urdfdom roscpp rosconsole-bridge urdf-parser-plugin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ urdfdom-headers tinyxml pluginlib roscpp rosconsole-bridge urdfdom ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a C++ parser for the Unified Robot Description
    Format (URDF), which is an XML format for representing a robot model.
    The code API of the parser has been through our review process and will remain
    backwards compatible in future releases.'';
    #license = lib.licenses.BSD;
  };
}
