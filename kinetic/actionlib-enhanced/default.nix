
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, actionlib-msgs, catkin, message-generation, actionlib, message-runtime, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-actionlib-enhanced";
  version = "0.0.6-r1";

  src = fetchurl {
    url = https://github.com/fannibal/actionlib-enhanced-release/archive/release/kinetic/actionlib_enhanced/0.0.6-1.tar.gz;
    sha256 = "30b68c0d99e51e6727fa4935a90ccfa5ff2e8311ce1318a94fd00dc2c825f2cd";
  };

  buildInputs = [ boost actionlib-msgs rospy message-generation message-runtime actionlib std-msgs ];
  propagatedBuildInputs = [ boost actionlib-msgs actionlib message-runtime rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The actionlib_enhanced package'';
    license = with lib.licenses; [ asl20 ];
  };
}
