
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, tf, catkin, tf2-ros, rostest, message-generation, message-runtime, actionlib, rospy, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-tf2-web-republisher";
  version = "0.3.2";

  src = fetchurl {
    url = https://github.com/RobotWebTools-release/tf2_web_republisher-release/archive/release/melodic/tf2_web_republisher/0.3.2-0.tar.gz;
    sha256 = "401fcc79bf11e5071e8304b1053bf8afed6f3e91d3df30c0823c87c82b741420";
  };

  buildInputs = [ message-generation tf2-ros actionlib-msgs actionlib geometry-msgs tf roscpp ];
  checkInputs = [ rostest rospy ];
  propagatedBuildInputs = [ message-runtime actionlib-msgs actionlib tf2-ros geometry-msgs tf roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Republishing of Selected TFs'';
    #license = lib.licenses.BSD;
  };
}
