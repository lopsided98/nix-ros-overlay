
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, flexbe-msgs, catkin, smach-ros, rostest, rospy, std-msgs, rosunit, flexbe-core }:
buildRosPackage {
  pname = "ros-kinetic-flexbe-testing";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/kinetic/flexbe_testing/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "49c028e36563ed61d814f1c74317627670d0605a19adb89ff9a7a8afd2301273";
  };

  buildType = "catkin";
  buildInputs = [ rostest ];
  checkInputs = [ std-msgs rosunit ];
  propagatedBuildInputs = [ flexbe-msgs smach-ros flexbe-core rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_testing provides a framework for unit testing states.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
