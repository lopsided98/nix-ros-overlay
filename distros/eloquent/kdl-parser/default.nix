
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, orocos-kdl, tinyxml, tinyxml-vendor, urdf, urdfdom-headers }:
buildRosPackage {
  pname = "ros-eloquent-kdl-parser";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kdl_parser-release/archive/release/eloquent/kdl_parser/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "d5238a72d6a6ac3b7cada5f24fc26fd74324153f6b9747fe8f61cfaee2bf69c1";
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
