
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, eigen, eigen3-cmake-module, orocos-kdl, rcutils, urdf, urdfdom-headers }:
buildRosPackage {
  pname = "ros-rolling-kdl-parser";
  version = "3.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kdl_parser-release/archive/release/rolling/kdl_parser/3.0.1-2.tar.gz";
    name = "3.0.1-2.tar.gz";
    sha256 = "60733f554405ae913400f0957874e0aa309e5c5023ce57c08165e82bb231bf86";
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
