
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, orocos-kdl, python-orocos-kdl }:
buildRosPackage {
  pname = "ros-kinetic-orocos-kinematics-dynamics";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/smits/orocos-kdl-release/archive/release/kinetic/orocos_kinematics_dynamics/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "77e2a0c42f6a65dd4fbbc5e043c69f9f8f7470389e4e6695487ad03b101892f5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ orocos-kdl python-orocos-kdl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package depends on a recent version of the Kinematics and Dynamics
    Library (KDL), distributed by the Orocos Project. It is a meta-package that
    depends on kdl which contains the c++ version and pykdl which contains the
    generated python bindings.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
