
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, smach-viewer }:
buildRosPackage {
  pname = "ros-noetic-executive-smach-visualization";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/jbohren/executive_smach_visualization-release/archive/release/noetic/executive_smach_visualization/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "e51d31da1fdaa1406fdd97da0ff022caa5e69f0fc2cc792ec40a6967e0be37a5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ smach-viewer ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This metapackage depends on the SMACH visualization tools.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
