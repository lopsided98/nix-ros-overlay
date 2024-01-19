
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, smach, smach-msgs, smach-ros }:
buildRosPackage {
  pname = "ros-noetic-executive-smach";
  version = "2.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/executive_smach-release/archive/release/noetic/executive_smach/2.5.2-1.tar.gz";
    name = "2.5.2-1.tar.gz";
    sha256 = "15366fae7e82149cdef48ae9fca33fc6acd5999a46c6afd25250646cabe16350";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ smach smach-msgs smach-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This metapackage depends on the SMACH library and ROS SMACH integration
    packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
