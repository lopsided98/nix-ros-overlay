
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, orocos-kdl, pythonPackages }:
buildRosPackage {
  pname = "ros-kinetic-python-orocos-kdl";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/smits/orocos-kdl-release/archive/release/kinetic/python_orocos_kdl/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "600cc901317126b492bce03cb39b6bf6df114b98afb86e5f04c96f6ac24a2c16";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ catkin orocos-kdl pythonPackages.sip ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''This package contains the python bindings PyKDL for the Kinematics and Dynamics
    Library (KDL), distributed by the Orocos Project.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
