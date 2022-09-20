
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, orocos-kdl, python3, python3Packages }:
buildRosPackage {
  pname = "ros-melodic-jsk-python-orocos-kdl-python3";
  version = "1.4.2-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/orocos-kdl_python3-release/archive/release/melodic/jsk_python_orocos_kdl_python3/1.4.2-2.tar.gz";
    name = "1.4.2-2.tar.gz";
    sha256 = "519c3d3a7ce2739bfedf3b94d39b9b1351c38cfaa3aaddb1a865a23ca5f0b1fe";
  };

  buildType = "cmake";
  buildInputs = [ python3Packages.catkin-pkg python3Packages.sip_4 ];
  propagatedBuildInputs = [ catkin orocos-kdl python3 ];
  nativeBuildInputs = [ catkin python3Packages.catkin-pkg ];

  meta = {
    description = ''This package contains the python bindings PyKDL for the Kinematics and Dynamics
    Library (KDL), distributed by the Orocos Project.
    This repository is for python3 compatibility in melodic environment.
    Supported by ROS community.'';
    license = with lib.licenses; [ "LGPL" ];
  };
}
