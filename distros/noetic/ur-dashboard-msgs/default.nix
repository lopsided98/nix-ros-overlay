
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-ur-dashboard-msgs";
  version = "2.4.1-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_ROS_Driver-release/archive/release/noetic/ur_dashboard_msgs/2.4.1-1.tar.gz";
    name = "2.4.1-1.tar.gz";
    sha256 = "34a7e58f542170150bee87b5ecb312eb54f1972354210a4ab9938415213fe57a";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Messages around the UR Dashboard server.";
    license = with lib.licenses; [ asl20 ];
  };
}
