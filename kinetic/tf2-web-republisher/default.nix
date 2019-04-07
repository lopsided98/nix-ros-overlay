
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, tf, catkin, tf2-ros, rostest, message-generation, message-runtime, actionlib, rospy, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-tf2-web-republisher";
  version = "0.3.2";

  src = fetchurl {
    url = https://github.com/RobotWebTools-release/tf2_web_republisher-release/archive/release/kinetic/tf2_web_republisher/0.3.2-0.tar.gz;
    sha256 = "887524f64f68d1f374bead0c55b87fe76a8009ccf577ce71e7f29e2fd9750e2b";
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
