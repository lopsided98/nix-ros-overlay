
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, orocos-kdl, tinyxml, tinyxml-vendor, urdf, urdfdom-headers }:
buildRosPackage {
  pname = "ros-foxy-kdl-parser";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kdl_parser-release/archive/release/foxy/kdl_parser/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "03e6f3f1b7f199ed7c4061ebe324ca86f58403c1ba67ecf7d2709633a4c17acc";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ orocos-kdl tinyxml tinyxml-vendor urdf urdfdom-headers ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''The Kinematics and Dynamics Library (KDL) defines a tree structure
   to represent the kinematic and dynamic parameters of a robot
   mechanism. <tt>kdl_parser</tt> provides tools to construct a KDL
   tree from an XML robot representation in URDF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
