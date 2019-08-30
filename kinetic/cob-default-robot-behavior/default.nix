
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, cob-script-server, catkin, cob-light, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-default-robot-behavior";
  version = "0.7.1-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_robots-release/archive/release/kinetic/cob_default_robot_behavior/0.7.1-1.tar.gz;
    sha256 = "83ee59b497bb5019e8ef766eb5ff19d5be3be3b57e3c264af58d2d9dc476ea8d";
  };

  propagatedBuildInputs = [ std-srvs cob-script-server cob-light rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_default_robot_behavior package'';
    license = with lib.licenses; [ asl20 ];
  };
}
