
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, smach-viewer }:
buildRosPackage {
  pname = "ros-melodic-executive-smach-visualization";
  version = "2.0.2";

  src = fetchurl {
    url = https://github.com/jbohren/executive_smach_visualization-release/archive/release/melodic/executive_smach_visualization/2.0.2-0.tar.gz;
    sha256 = "75b50684f1fcbe42e1b5307402ff4ac6f5b598d2f2ff67acc3c746af9e83b2c8";
  };

  propagatedBuildInputs = [ smach-viewer ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This metapackage depends on the SMACH visualization tools.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
