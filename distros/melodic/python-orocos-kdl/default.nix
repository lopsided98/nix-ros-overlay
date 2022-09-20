
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, orocos-kdl, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-python-orocos-kdl";
  version = "1.4.0";

  src = fetchurl {
    url = "https://github.com/orocos/orocos-kdl-release/archive/release/melodic/python_orocos_kdl/1.4.0-0.tar.gz";
    name = "1.4.0-0.tar.gz";
    sha256 = "e2f7f6fafccaf26d88863ac50b826301c14db71f61e4caff757a482e304a62a0";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ catkin orocos-kdl pythonPackages.sip_4 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''This package contains the python bindings PyKDL for the Kinematics and Dynamics
    Library (KDL), distributed by the Orocos Project.'';
    license = with lib.licenses; [ "LGPL" ];
  };
}
