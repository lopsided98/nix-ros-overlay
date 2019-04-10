
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, tf, catkin, tf2-ros, rostest, message-generation, message-runtime, actionlib, rospy, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-tf2-web-republisher";
  version = "0.3.2";

  src = fetchurl {
    url = https://github.com/RobotWebTools-release/tf2_web_republisher-release/archive/release/lunar/tf2_web_republisher/0.3.2-0.tar.gz;
    sha256 = "9f9019aace866590588b29cb289f3cba568cf6abcdbe1c48222d2a4a592e2a82";
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
