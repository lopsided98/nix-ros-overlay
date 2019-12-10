
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-script-server, geometry-msgs, moveit-commander, rospy, tf }:
buildRosPackage {
  pname = "ros-melodic-cob-moveit-interface";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_manipulation-release/archive/release/melodic/cob_moveit_interface/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "4093eba664c8adf0307ccb6d2f0412320cb819913136a4edf7f44312130c9c99";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-script-server geometry-msgs moveit-commander rospy tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_moveit_interface'';
    license = with lib.licenses; [ asl20 ];
  };
}
