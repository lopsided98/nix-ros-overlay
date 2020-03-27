
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-light, cob-script-server, rospy, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-cob-default-robot-behavior";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_robots-release/archive/release/melodic/cob_default_robot_behavior/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "4503f1cf881e7c712ef66aecda1178dcb716e2760a2ff5061669273c673dbdd0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-light cob-script-server rospy std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_default_robot_behavior package provides helper scripts for standard robot behaviors.'';
    license = with lib.licenses; [ asl20 ];
  };
}
