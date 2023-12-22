
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-ur-dashboard-msgs";
  version = "2.1.3-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_ROS_Driver-release/archive/release/noetic/ur_dashboard_msgs/2.1.3-1.tar.gz";
    name = "2.1.3-1.tar.gz";
    sha256 = "091218910619c635daa906f5f2693a4c9ba73388ba17c8c14d2bc742f45210dd";
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
