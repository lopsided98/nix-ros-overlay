
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, create-node, catkin, rqt-gui, rqt-robot-dashboard, rospy, diagnostic-msgs }:
buildRosPackage {
  pname = "ros-kinetic-create-dashboard";
  version = "2.3.1";

  src = fetchurl {
    url = https://github.com/turtlebot-release/turtlebot_create_desktop-release/archive/release/kinetic/create_dashboard/2.3.1-0.tar.gz;
    sha256 = "51da3f9990ea493f2626da4186eb7bfc7055a4d0de39959478c09477f0aab9e7";
  };

  buildInputs = [ rqt-gui-py rqt-robot-dashboard rospy diagnostic-msgs create-node rqt-gui ];
  propagatedBuildInputs = [ rqt-gui-py rqt-robot-dashboard rospy diagnostic-msgs create-node rqt-gui ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The Create dashboard is a RQT-based plug-in for visualising data from the Create and giving easy access
    to basic functionalities.'';
    #license = lib.licenses.BSD;
  };
}
