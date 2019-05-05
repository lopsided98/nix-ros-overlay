
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python-orocos-kdl, catkin, orocos-kdl }:
buildRosPackage {
  pname = "ros-lunar-orocos-kinematics-dynamics";
  version = "1.3.1";

  src = fetchurl {
    url = https://github.com/smits/orocos-kdl-release/archive/release/lunar/orocos_kinematics_dynamics/1.3.1-0.tar.gz;
    sha256 = "f81a1a179b95e0fedccb5a554b1dd9ee818126c0b31f8a98ec4199562c9c85c3";
  };

  propagatedBuildInputs = [ python-orocos-kdl orocos-kdl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package depends on a recent version of the Kinematics and Dynamics
    Library (KDL), distributed by the Orocos Project. It is a meta-package that
    depends on kdl which contains the c++ version and pykdl which contains the
    generated python bindings.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
