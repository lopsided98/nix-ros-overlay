
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-ur-dashboard-msgs";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_ROS_Driver-release/archive/release/melodic/ur_dashboard_msgs/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "bc39f04c6a0c6515fe8e72a7b73052f4c3497048cfc6bca1bdc5575e04fc0608";
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
