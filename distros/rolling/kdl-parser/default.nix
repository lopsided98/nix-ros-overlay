
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, orocos-kdl-vendor, rcutils, urdf, urdfdom-headers }:
buildRosPackage {
  pname = "ros-rolling-kdl-parser";
  version = "2.11.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kdl_parser-release/archive/release/rolling/kdl_parser/2.11.0-2.tar.gz";
    name = "2.11.0-2.tar.gz";
    sha256 = "9998cc38377ff9c76986fe2c7c3871a4a82f8758da27371028aa64af4ea42dfd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ orocos-kdl-vendor rcutils urdf urdfdom-headers ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''The Kinematics and Dynamics Library (KDL) defines a tree structure
   to represent the kinematic and dynamic parameters of a robot
   mechanism. <tt>kdl_parser</tt> provides tools to construct a KDL
   tree from an XML robot representation in URDF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
