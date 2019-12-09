
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, orocos-kdl, urdfdom-headers, ament-cmake-ros, tinyxml-vendor, urdf, ament-lint-common, tinyxml, ament-lint-auto }:
buildRosPackage {
  pname = "ros-eloquent-kdl-parser";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kdl_parser-release/archive/release/eloquent/kdl_parser/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "69da41f6a6398772e8b79e4fe8d327aa4eb8692a066e16a6548bdc0622ccddb9";
  };

  buildType = "ament_cmake";
  buildInputs = [ orocos-kdl urdfdom-headers urdf tinyxml-vendor tinyxml ];
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ orocos-kdl urdfdom-headers urdf tinyxml-vendor tinyxml ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''The Kinematics and Dynamics Library (KDL) defines a tree structure
   to represent the kinematic and dynamic parameters of a robot
   mechanism. <tt>kdl_parser</tt> provides tools to construct a KDL
   tree from an XML robot representation in URDF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
