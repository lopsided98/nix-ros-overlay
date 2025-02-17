
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, smach, smach-msgs, smach-ros }:
buildRosPackage {
  pname = "ros-noetic-executive-smach";
  version = "2.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/executive_smach-release/archive/release/noetic/executive_smach/2.5.3-1.tar.gz";
    name = "2.5.3-1.tar.gz";
    sha256 = "bae8a4189c5982af089becb75685ae6655a40da8fd24d00d91b82837448080e8";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ smach smach-msgs smach-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This metapackage depends on the SMACH library and ROS SMACH integration
    packages.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
