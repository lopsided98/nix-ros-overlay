
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, boost, catkin, message-generation, message-runtime, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-actionlib-enhanced";
  version = "0.0.9-r1";

  src = fetchurl {
    url = "https://github.com/fannibal/actionlib-enhanced-release/archive/release/kinetic/actionlib_enhanced/0.0.9-1.tar.gz";
    name = "0.0.9-1.tar.gz";
    sha256 = "c497990f9992c03e90271ba56d38a3901cb644589384f78661b65bd6f6f6a8d3";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs boost message-runtime rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The actionlib_enhanced package'';
    license = with lib.licenses; [ asl20 ];
  };
}
