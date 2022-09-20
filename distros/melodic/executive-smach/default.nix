
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, smach, smach-msgs, smach-ros }:
buildRosPackage {
  pname = "ros-melodic-executive-smach";
  version = "2.0.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/executive_smach-release/archive/release/melodic/executive_smach/2.0.1-0.tar.gz";
    name = "2.0.1-0.tar.gz";
    sha256 = "5266563dc0f5888791fbf077127b3bb5539550c93496a103a4b0f3e1bafef697";
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
