
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, orocos-kdl, ament-lint-common, tinyxml, urdfdom-headers, urdf, tinyxml-vendor, ament-cmake-ros, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-kdl-parser";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kdl_parser-release/archive/release/dashing/kdl_parser/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "d232172cd462fe64bd4ce7fd2a63782f25914f50f4fcb73dbe597e0bf7fbc758";
  };

  buildType = "ament_cmake";
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
