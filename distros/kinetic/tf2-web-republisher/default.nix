
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, geometry-msgs, message-generation, message-runtime, roscpp, rospy, rostest, tf, tf2-ros }:
buildRosPackage {
  pname = "ros-kinetic-tf2-web-republisher";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/RobotWebTools-release/tf2_web_republisher-release/archive/release/kinetic/tf2_web_republisher/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "887524f64f68d1f374bead0c55b87fe76a8009ccf577ce71e7f29e2fd9750e2b";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  checkInputs = [ rospy rostest ];
  propagatedBuildInputs = [ actionlib actionlib-msgs geometry-msgs message-runtime roscpp tf tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Republishing of Selected TFs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
