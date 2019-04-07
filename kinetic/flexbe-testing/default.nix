
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, flexbe-msgs, catkin, smach-ros, rostest, rospy, std-msgs, rosunit, flexbe-core }:
buildRosPackage {
  pname = "ros-kinetic-flexbe-testing";
  version = "1.1.1";

  src = fetchurl {
    url = https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/kinetic/flexbe_testing/1.1.1-0.tar.gz;
    sha256 = "7a73ec5bc1cb92ed1af61249712a1d5ff1e985bfb816497ffbc20e0727fc3ca3";
  };

  buildInputs = [ rostest ];
  checkInputs = [ std-msgs rosunit ];
  propagatedBuildInputs = [ flexbe-msgs smach-ros flexbe-core rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_testing provides a framework for unit testing states.'';
    #license = lib.licenses.BSD;
  };
}
