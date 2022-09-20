
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, orocos-kdl, tinyxml, tinyxml-vendor, urdf, urdfdom-headers }:
buildRosPackage {
  pname = "ros-foxy-kdl-parser";
  version = "2.4.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kdl_parser-release/archive/release/foxy/kdl_parser/2.4.1-2.tar.gz";
    name = "2.4.1-2.tar.gz";
    sha256 = "0b71cd7f018ca1ff7a088d37b83ce476d87d7c17001edc8bcde023817c1fadd4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
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
