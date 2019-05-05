
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, smach-ros, catkin, smach-msgs, smach }:
buildRosPackage {
  pname = "ros-lunar-executive-smach";
  version = "2.0.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/executive_smach-release/archive/release/lunar/executive_smach/2.0.1-0.tar.gz;
    sha256 = "37cb80b39b90d5a9095440afe5aaf447e14ca96f761d63d97e17104e28a0b017";
  };

  propagatedBuildInputs = [ smach smach-msgs smach-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This metapackage depends on the SMACH library and ROS SMACH integration
    packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
