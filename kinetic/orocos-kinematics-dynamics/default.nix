
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python-orocos-kdl, catkin, orocos-kdl }:
buildRosPackage {
  pname = "ros-kinetic-orocos-kinematics-dynamics";
  version = "1.3.1";

  src = fetchurl {
    url = https://github.com/smits/orocos-kdl-release/archive/release/kinetic/orocos_kinematics_dynamics/1.3.1-0.tar.gz;
    sha256 = "8eda2fe53e407e3d565f187b91fb37508c99efd14143d25fb73ffb1d61437e43";
  };

  propagatedBuildInputs = [ python-orocos-kdl orocos-kdl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package depends on a recent version of the Kinematics and Dynamics
    Library (KDL), distributed by the Orocos Project. It is a meta-package that
    depends on kdl which contains the c++ version and pykdl which contains the
    generated python bindings.'';
    #license = lib.licenses.LGPL;
  };
}
