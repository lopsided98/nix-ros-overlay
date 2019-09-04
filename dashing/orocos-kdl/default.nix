
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cppunit, cmake, pkg-config, eigen }:
buildRosPackage {
  pname = "ros-dashing-orocos-kdl";
  version = "3.2.0-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/orocos_kinematics_dynamics-release/archive/release/dashing/orocos_kdl/3.2.0-1.tar.gz;
    sha256 = "e3f32820477a0963c3b8dac5c7b008144382f1b707a9b3cacbe7e9433d06653e";
  };

  buildType = "cmake";
  buildInputs = [ eigen ];
  checkInputs = [ cppunit ];
  propagatedBuildInputs = [ pkg-config eigen ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''This package contains a recent version of the Kinematics and Dynamics
    Library (KDL), distributed by the Orocos Project.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
