
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-light, cob-script-server, rospy, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-kinetic-cob-default-robot-behavior";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_robots-release/archive/release/kinetic/cob_default_robot_behavior/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "7d81871de6e8ccc5ea5d326f5418b5045d75932e858d3f7c9824c5ed9ce7c7d5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-light cob-script-server rospy std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_default_robot_behavior package'';
    license = with lib.licenses; [ asl20 ];
  };
}
