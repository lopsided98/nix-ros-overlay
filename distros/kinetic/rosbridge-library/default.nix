
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, diagnostic-msgs, geometry-msgs, message-generation, message-runtime, nav-msgs, pythonPackages, roscpp, rosgraph, rospy, rospy-tutorials, rosservice, rostest, rostopic, sensor-msgs, std-msgs, std-srvs, stereo-msgs, tf2-msgs, trajectory-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rosbridge-library";
  version = "0.11.9-r1";

  src = fetchurl {
    url = "https://github.com/RobotWebTools-release/rosbridge_suite-release/archive/release/kinetic/rosbridge_library/0.11.9-1.tar.gz";
    name = "0.11.9-1.tar.gz";
    sha256 = "2d11550f1c25b0c6d9d5f496ce7c90cc2b2ae178aba1cff61ad7bb873456be48";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  checkInputs = [ actionlib-msgs diagnostic-msgs nav-msgs rospy-tutorials rostest sensor-msgs std-srvs stereo-msgs tf2-msgs trajectory-msgs visualization-msgs ];
  propagatedBuildInputs = [ geometry-msgs message-runtime pythonPackages.bson pythonPackages.pillow roscpp rosgraph rospy rosservice rostopic std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The core rosbridge package, responsible for interpreting JSON and performing
    the appropriate ROS action, like subscribe, publish, call service, and
    interact with params.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
