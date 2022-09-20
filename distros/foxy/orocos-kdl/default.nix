
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, cppunit, eigen, eigen3-cmake-module, pkg-config }:
buildRosPackage {
  pname = "ros-foxy-orocos-kdl";
  version = "3.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/orocos_kinematics_dynamics-release/archive/release/foxy/orocos_kdl/3.3.4-1.tar.gz";
    name = "3.3.4-1.tar.gz";
    sha256 = "833a045a938048afc42fc7f73466b686961d98d5763a8a2a05d0df29fa6dd704";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ cppunit ];
  propagatedBuildInputs = [ eigen eigen3-cmake-module pkg-config ];
  nativeBuildInputs = [ cmake eigen3-cmake-module ];

  meta = {
    description = ''This package contains a recent version of the Kinematics and Dynamics
    Library (KDL), distributed by the Orocos Project.'';
    license = with lib.licenses; [ "LGPL-2.1-or-later" ];
  };
}
