
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, actionlib-msgs, catkin, message-generation, actionlib, message-runtime, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-actionlib-enhanced";
  version = "0.0.1-r1";

  src = fetchurl {
    url = https://github.com/fannibal/actionlib-enhanced-release/archive/release/kinetic/actionlib_enhanced/0.0.1-1.tar.gz;
    sha256 = "90d6b50e631526b5128df46ffcb25b723b531314667fd8d71ee48f91fd549b9b";
  };

  buildInputs = [ boost actionlib-msgs rospy message-generation message-runtime actionlib std-msgs ];
  propagatedBuildInputs = [ boost actionlib-msgs actionlib message-runtime rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The actionlib_enhanced package'';
    license = with lib.licenses; [ asl20 ];
  };
}
