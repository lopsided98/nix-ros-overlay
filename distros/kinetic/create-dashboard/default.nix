
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, create-node, diagnostic-msgs, rospy, rqt-gui, rqt-gui-py, rqt-robot-dashboard }:
buildRosPackage {
  pname = "ros-kinetic-create-dashboard";
  version = "2.3.1";

  src = fetchurl {
    url = "https://github.com/turtlebot-release/turtlebot_create_desktop-release/archive/release/kinetic/create_dashboard/2.3.1-0.tar.gz";
    name = "2.3.1-0.tar.gz";
    sha256 = "51da3f9990ea493f2626da4186eb7bfc7055a4d0de39959478c09477f0aab9e7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ create-node diagnostic-msgs rospy rqt-gui rqt-gui-py rqt-robot-dashboard ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The Create dashboard is a RQT-based plug-in for visualising data from the Create and giving easy access
    to basic functionalities.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
