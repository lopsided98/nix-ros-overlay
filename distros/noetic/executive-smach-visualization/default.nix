
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, smach-viewer }:
buildRosPackage {
  pname = "ros-noetic-executive-smach-visualization";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/jbohren/executive_smach_visualization-release/archive/release/noetic/executive_smach_visualization/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "7f467c3aeb0f2d0b13e3b216c8e61a4c63307ef7c4e93d58fdb35bd020394ec6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ smach-viewer ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This metapackage depends on the SMACH visualization tools.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
