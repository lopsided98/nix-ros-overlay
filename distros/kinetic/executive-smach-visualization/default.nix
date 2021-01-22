
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, smach-viewer }:
buildRosPackage {
  pname = "ros-kinetic-executive-smach-visualization";
  version = "2.0.2";

  src = fetchurl {
    url = "https://github.com/jbohren/executive_smach_visualization-release/archive/release/kinetic/executive_smach_visualization/2.0.2-0.tar.gz";
    name = "2.0.2-0.tar.gz";
    sha256 = "55d0c837bec9135e7f728c5e88deda303cbb655059417bbd309f70f2eda581bd";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ smach-viewer ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This metapackage depends on the SMACH visualization tools.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
