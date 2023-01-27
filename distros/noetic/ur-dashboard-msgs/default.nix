
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-ur-dashboard-msgs";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_ROS_Driver-release/archive/release/noetic/ur_dashboard_msgs/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "210f75cf72e0344ec212e9bd4fa0104078e78821e699c03e260008580fe80b62";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages around the UR Dashboard server.'';
    license = with lib.licenses; [ asl20 ];
  };
}
