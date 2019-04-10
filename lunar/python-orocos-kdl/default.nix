
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, pythonPackages, orocos-kdl }:
buildRosPackage {
  pname = "ros-lunar-python-orocos-kdl";
  version = "1.3.1";

  src = fetchurl {
    url = https://github.com/smits/orocos-kdl-release/archive/release/lunar/python_orocos_kdl/1.3.1-0.tar.gz;
    sha256 = "f0fe342a7974c934bfb70e29f4a2a6d1e310ee81611734892533afa240b18422";
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
