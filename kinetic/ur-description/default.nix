
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-ur-description";
  version = "1.2.5";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/universal_robot-release/archive/release/kinetic/ur_description/1.2.5-0.tar.gz;
    sha256 = "367ee7fd4d1d9456e4e2337b6be216a7f39743e1a4efdcaa6ea206393441fcff";
  };

  propagatedBuildInputs = [ urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF description for Universal UR5/10 robot arms'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
