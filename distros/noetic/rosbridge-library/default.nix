
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, diagnostic-msgs, geometry-msgs, message-generation, message-runtime, nav-msgs, python3Packages, roscpp, rosgraph, rospy, rospy-tutorials, rosservice, rostest, rostopic, rosunit, sensor-msgs, std-msgs, std-srvs, stereo-msgs, tf2-msgs, trajectory-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-rosbridge-library";
  version = "0.11.17-r1";

  src = fetchurl {
    url = "https://github.com/RobotWebTools-release/rosbridge_suite-release/archive/release/noetic/rosbridge_library/0.11.17-1.tar.gz";
    name = "0.11.17-1.tar.gz";
    sha256 = "01ae6153076f7ae789bf7c2a5a2a4387878fc36e1f0a1c6378486b442df677fc";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation python3Packages.setuptools ];
  checkInputs = [ actionlib-msgs diagnostic-msgs nav-msgs rospy-tutorials rostest rosunit sensor-msgs std-srvs stereo-msgs tf2-msgs trajectory-msgs visualization-msgs ];
  propagatedBuildInputs = [ geometry-msgs message-runtime python3Packages.bson python3Packages.pillow roscpp rosgraph rospy rosservice rostopic std-msgs ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''The core rosbridge package, responsible for interpreting JSON and performing
    the appropriate ROS action, like subscribe, publish, call service, and
    interact with params.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
