
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, smach, smach-msgs, smach-ros }:
buildRosPackage {
  pname = "ros-kinetic-executive-smach";
  version = "2.0.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/executive_smach-release/archive/release/kinetic/executive_smach/2.0.1-0.tar.gz";
    name = "2.0.1-0.tar.gz";
    sha256 = "f5c17a26e1235ce460026d47e673f955e9fc04ea7c432dadde2cf1654fe257ac";
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
