
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, smach-viewer }:
buildRosPackage {
  pname = "ros-melodic-executive-smach-visualization";
  version = "4.0.1-r1";

  src = fetchurl {
    url = "https://github.com/jbohren/executive_smach_visualization-release/archive/release/melodic/executive_smach_visualization/4.0.1-1.tar.gz";
    name = "4.0.1-1.tar.gz";
    sha256 = "247e6d778d9108aa3ba0c47233c603d8c0e2cf17badbbebb519894ee3672135d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ smach-viewer ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This metapackage depends on the SMACH visualization tools.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
