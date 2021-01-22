
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, smach, smach-msgs, smach-ros }:
buildRosPackage {
  pname = "ros-noetic-executive-smach";
  version = "2.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/executive_smach-release/archive/release/noetic/executive_smach/2.5.0-1.tar.gz";
    name = "2.5.0-1.tar.gz";
    sha256 = "bbdeca738f41610a184f7cab0168311cb7531661a75c9e1c5e143392a2959735";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ smach smach-msgs smach-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This metapackage depends on the SMACH library and ROS SMACH integration
    packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
