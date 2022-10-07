
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, diagnostic-msgs, geometry-msgs, message-generation, message-runtime, nav-msgs, pythonPackages, roscpp, rosgraph, rospy, rospy-tutorials, rosservice, rostest, rostopic, rosunit, sensor-msgs, std-msgs, std-srvs, stereo-msgs, tf2-msgs, trajectory-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-rosbridge-library";
  version = "0.11.15-r1";

  src = fetchurl {
    url = "https://github.com/RobotWebTools-release/rosbridge_suite-release/archive/release/melodic/rosbridge_library/0.11.15-1.tar.gz";
    name = "0.11.15-1.tar.gz";
    sha256 = "6b9a591ffae215065eb0bd9b88ab717b7391cee025ea1e68dbc6fd977b6ee7b3";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  checkInputs = [ actionlib-msgs diagnostic-msgs nav-msgs rospy-tutorials rostest rosunit sensor-msgs std-srvs stereo-msgs tf2-msgs trajectory-msgs visualization-msgs ];
  propagatedBuildInputs = [ geometry-msgs message-runtime pythonPackages.bson pythonPackages.future pythonPackages.pillow roscpp rosgraph rospy rosservice rostopic std-msgs ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''The core rosbridge package, responsible for interpreting JSON and performing
    the appropriate ROS action, like subscribe, publish, call service, and
    interact with params.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
