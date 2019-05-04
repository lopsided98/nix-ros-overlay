
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, cmake-modules, catkin, rosconsole-bridge, tinyxml, urdf-parser-plugin, urdfdom, rostest, urdfdom-headers, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-urdf";
  version = "1.12.12";

  src = fetchurl {
    url = https://github.com/ros-gbp/urdf-release/archive/release/kinetic/urdf/1.12.12-0.tar.gz;
    sha256 = "3ef94e4c96e189e1df3b4e57d0309bd1bd76a7a28a674a5944e26b8fd674cb33";
  };

  buildInputs = [ cmake-modules pluginlib rosconsole-bridge tinyxml urdf-parser-plugin urdfdom urdfdom-headers roscpp ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ pluginlib rosconsole-bridge tinyxml urdfdom urdfdom-headers roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a C++ parser for the Unified Robot Description
    Format (URDF), which is an XML format for representing a robot model.
    The code API of the parser has been through our review process and will remain
    backwards compatible in future releases.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
