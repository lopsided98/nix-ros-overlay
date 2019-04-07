
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, pythonPackages, orocos-kdl }:
buildRosPackage {
  pname = "ros-kinetic-python-orocos-kdl";
  version = "1.3.1";

  src = fetchurl {
    url = https://github.com/smits/orocos-kdl-release/archive/release/kinetic/python_orocos_kdl/1.3.1-0.tar.gz;
    sha256 = "a243fca87aad9a138c4356d5c850dc1ea078e8ef77c15bcb395fe373d28c859d";
  };

  buildInputs = [ pythonPackages.sip orocos-kdl ];
  propagatedBuildInputs = [ catkin orocos-kdl pythonPackages.sip ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''This package contains the python bindings PyKDL for the Kinematics and Dynamics
    Library (KDL), distributed by the Orocos Project.'';
    #license = lib.licenses.LGPL;
  };
}
