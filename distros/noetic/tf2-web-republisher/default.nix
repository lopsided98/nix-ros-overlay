
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, geometry-msgs, message-generation, message-runtime, roscpp, rospy, rostest, tf, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-tf2-web-republisher";
  version = "0.3.2-r3";

  src = fetchurl {
    url = "https://github.com/RobotWebTools-release/tf2_web_republisher-release/archive/release/noetic/tf2_web_republisher/0.3.2-3.tar.gz";
    name = "0.3.2-3.tar.gz";
    sha256 = "30a3d8b8ec4d7c65ac4bb5cbffd2e9faf8c9b1d66ceaf9fd0aa1d175b320f93d";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  checkInputs = [ rospy rostest ];
  propagatedBuildInputs = [ actionlib actionlib-msgs geometry-msgs message-runtime roscpp tf tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Republishing of Selected TFs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
