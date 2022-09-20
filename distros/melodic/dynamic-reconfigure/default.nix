
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cpp-common, message-generation, message-runtime, roscpp, roscpp-serialization, roslib, rospy, rosservice, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-dynamic-reconfigure";
  version = "1.6.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/dynamic_reconfigure-release/archive/release/melodic/dynamic_reconfigure/1.6.5-1.tar.gz";
    name = "1.6.5-1.tar.gz";
    sha256 = "5e609322e2ed6ab0698b93ffa4fd89c7fee57f5e08ec4cc881e5f8246e9707b2";
  };

  buildType = "catkin";
  buildInputs = [ catkin cpp-common message-generation roscpp-serialization rostest ];
  propagatedBuildInputs = [ boost message-runtime roscpp roslib rospy rosservice std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The dynamic_reconfigure package provides a means to update parameters
    at runtime without having to restart the node.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
