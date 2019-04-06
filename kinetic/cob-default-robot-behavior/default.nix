
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, cob-script-server, catkin, cob-light, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-default-robot-behavior";
  version = "0.6.11";

  src = fetchurl {
    url = https://github.com/ipa320/cob_robots-release/archive/release/kinetic/cob_default_robot_behavior/0.6.11-0.tar.gz;
    sha256 = "3602ac2507120695a46e7dd2c388bc9ec7d8549dc6bd85ac9881c4653a5d9019";
  };

  propagatedBuildInputs = [ cob-light std-srvs rospy std-msgs cob-script-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_default_robot_behavior package'';
    #license = lib.licenses.Apache 2.0;
  };
}
