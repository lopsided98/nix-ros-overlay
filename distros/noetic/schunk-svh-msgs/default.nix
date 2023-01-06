
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-schunk-svh-msgs";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/schunk_svh_ros_driver-release/archive/release/noetic/schunk_svh_msgs/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "2da832fcb7f410e868a3ae6b67f683e15f2cb781f2bacc435fa102f554b28562";
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
