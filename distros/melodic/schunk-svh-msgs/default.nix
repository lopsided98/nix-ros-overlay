
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-schunk-svh-msgs";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/schunk_svh_ros_driver-release/archive/release/melodic/schunk_svh_msgs/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "e43698c7600d93e5f481ea22df0bac518277e80d6f33a93e4be0a9e2d87b5fc8";
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
