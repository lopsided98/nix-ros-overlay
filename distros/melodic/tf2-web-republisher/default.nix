
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, geometry-msgs, message-generation, message-runtime, roscpp, rospy, rostest, tf, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-tf2-web-republisher";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/RobotWebTools-release/tf2_web_republisher-release/archive/release/melodic/tf2_web_republisher/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "401fcc79bf11e5071e8304b1053bf8afed6f3e91d3df30c0823c87c82b741420";
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
