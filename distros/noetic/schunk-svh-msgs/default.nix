
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-schunk-svh-msgs";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/SCHUNK-GmbH-Co-KG/schunk_svh_ros_driver-release/archive/release/noetic/schunk_svh_msgs/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "a20ea4ff9e9de46c41b2ddde6e1ecbc3d95ab47e0bb4c9910036046b2ae4d929";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib-msgs message-generation message-runtime std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS1 messages, services, and actions for the Schunk SVH five finger hand'';
    license = with lib.licenses; [ "GPL-3.0-or-later" ];
  };
}
