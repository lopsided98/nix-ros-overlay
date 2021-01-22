
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, pluginlib, rosconsole-bridge, roscpp, rostest, tinyxml, urdf-parser-plugin, urdfdom, urdfdom-headers }:
buildRosPackage {
  pname = "ros-kinetic-urdf";
  version = "1.12.12";

  src = fetchurl {
    url = "https://github.com/ros-gbp/urdf-release/archive/release/kinetic/urdf/1.12.12-0.tar.gz";
    name = "1.12.12-0.tar.gz";
    sha256 = "3ef94e4c96e189e1df3b4e57d0309bd1bd76a7a28a674a5944e26b8fd674cb33";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules urdf-parser-plugin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ pluginlib rosconsole-bridge roscpp tinyxml urdfdom urdfdom-headers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a C++ parser for the Unified Robot Description
    Format (URDF), which is an XML format for representing a robot model.
    The code API of the parser has been through our review process and will remain
    backwards compatible in future releases.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
