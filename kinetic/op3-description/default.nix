
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-state-publisher, catkin, rviz, robot-state-publisher }:
buildRosPackage {
  pname = "ros-kinetic-op3-description";
  version = "0.1.1";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/ROBOTIS-OP3-Common-release/archive/release/kinetic/op3_description/0.1.1-0.tar.gz;
    sha256 = "9b80d00afd5f15797cbbdf640ff6a4ad6db3dff1845c1c0614a55dd24af42134";
  };

  propagatedBuildInputs = [ rviz joint-state-publisher robot-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The op3_description package'';
    #license = lib.licenses.Apache 2.0;
  };
}
