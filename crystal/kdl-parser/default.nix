
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, orocos-kdl, ament-lint-common, tinyxml, urdfdom-headers, urdf, tinyxml-vendor, ament-cmake-ros, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-kdl-parser";
  version = "2.2.0";

  src = fetchurl {
    url = https://github.com/ros2-gbp/kdl_parser-release/archive/release/crystal/kdl_parser/2.2.0-0.tar.gz;
    sha256 = "9f3e1d9af948522e30fceb48dc27cd55cf2726965b00b6d3f745f205e49c92bf";
  };

  buildInputs = [ orocos-kdl tinyxml urdfdom-headers urdf tinyxml-vendor ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ orocos-kdl tinyxml urdfdom-headers urdf tinyxml-vendor ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''The Kinematics and Dynamics Library (KDL) defines a tree structure
   to represent the kinematic and dynamic parameters of a robot
   mechanism. <tt>kdl_parser</tt> provides tools to construct a KDL
   tree from an XML robot representation in URDF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
