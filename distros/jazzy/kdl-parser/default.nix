
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, orocos-kdl-vendor, rcutils, urdf, urdfdom-headers }:
buildRosPackage {
  pname = "ros-jazzy-kdl-parser";
  version = "2.11.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kdl_parser-release/archive/release/jazzy/kdl_parser/2.11.0-3.tar.gz";
    name = "2.11.0-3.tar.gz";
    sha256 = "e9e5361b4d8442913151f87c0f6b5c001e0464545996a835a83ad5f21c8c26c7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ orocos-kdl-vendor rcutils urdf urdfdom-headers ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "The Kinematics and Dynamics Library (KDL) defines a tree structure
   to represent the kinematic and dynamic parameters of a robot
   mechanism. <tt>kdl_parser</tt> provides tools to construct a KDL
   tree from an XML robot representation in URDF.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
