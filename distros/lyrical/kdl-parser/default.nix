
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, eigen, eigen3-cmake-module, orocos-kdl, rcutils, urdf, urdfdom-headers }:
buildRosPackage {
  pname = "ros-lyrical-kdl-parser";
  version = "3.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kdl_parser-release/archive/release/lyrical/kdl_parser/3.0.1-3.tar.gz";
    name = "3.0.1-3.tar.gz";
    sha256 = "c88bb839fa0826566e2f8f5dee38112c40c2d36b34770d1619cda8861262af0c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros eigen eigen3-cmake-module ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ orocos-kdl rcutils urdf urdfdom-headers ];
  nativeBuildInputs = [ ament-cmake-ros eigen3-cmake-module ];

  meta = {
    description = "The Kinematics and Dynamics Library (KDL) defines a tree structure
   to represent the kinematic and dynamic parameters of a robot
   mechanism. <tt>kdl_parser</tt> provides tools to construct a KDL
   tree from an XML robot representation in URDF.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
