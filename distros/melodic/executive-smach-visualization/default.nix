
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, smach-viewer }:
buildRosPackage {
  pname = "ros-melodic-executive-smach-visualization";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/jbohren/executive_smach_visualization-release/archive/release/melodic/executive_smach_visualization/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "ee755a0a534f5e577f3b6bd6a5af3eb30a8056f2e2a7544d0cf50455ad60a73a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ smach-viewer ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This metapackage depends on the SMACH visualization tools.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
