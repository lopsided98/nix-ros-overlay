
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, rosconsole, orocos-kdl, catkin, tinyxml, rostest, urdfdom-headers, urdf, roscpp }:
buildRosPackage {
  pname = "ros-lunar-kdl-parser";
  version = "1.12.11";

  src = fetchurl {
    url = https://github.com/ros-gbp/kdl_parser-release/archive/release/lunar/kdl_parser/1.12.11-0.tar.gz;
    sha256 = "aac0e053ceadeb66dc4b9bb7cb35c87b64a37a046a0a517b0bcf0dab433dc749";
  };

  buildInputs = [ orocos-kdl cmake-modules rosconsole tinyxml urdfdom-headers urdf ];
  checkInputs = [ rostest roscpp ];
  propagatedBuildInputs = [ orocos-kdl rosconsole tinyxml urdfdom-headers urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The Kinematics and Dynamics Library (KDL) defines a tree structure
   to represent the kinematic and dynamic parameters of a robot
   mechanism. <tt>kdl_parser</tt> provides tools to construct a KDL
   tree from an XML robot representation in URDF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
