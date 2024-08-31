
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, orocos-kdl-vendor, rcutils, urdf, urdfdom-headers }:
buildRosPackage {
  pname = "ros-rolling-kdl-parser";
  version = "2.12.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kdl_parser-release/archive/release/rolling/kdl_parser/2.12.1-1.tar.gz";
    name = "2.12.1-1.tar.gz";
    sha256 = "8a440a9147fac3ce5e0075ec4c6beee9e3474a11648a6fbc5768e281e9a4ecc9";
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
