
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, orocos-kdl-vendor, rcutils, urdf, urdfdom-headers }:
buildRosPackage {
  pname = "ros-kilted-kdl-parser";
  version = "2.12.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kdl_parser-release/archive/release/kilted/kdl_parser/2.12.1-2.tar.gz";
    name = "2.12.1-2.tar.gz";
    sha256 = "eea3de43e8aae465421c04475bd74147b34d771105bbbe8d0267deeeaa655a34";
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
