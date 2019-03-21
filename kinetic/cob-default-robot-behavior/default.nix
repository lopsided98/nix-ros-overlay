
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, cob-script-server, catkin, cob-light, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-default-robot-behavior";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/ipa320/cob_robots-release/archive/release/kinetic/cob_default_robot_behavior/0.6.10-0.tar.gz;
    sha256 = "e4ef4fef1e836553cd43ecc77ef5e0f044f7a3952388c9a298a1af32524885b8";
  };

  propagatedBuildInputs = [ cob-light std-srvs rospy std-msgs cob-script-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_default_robot_behavior package'';
    #license = lib.licenses.Apache 2.0;
  };
}
