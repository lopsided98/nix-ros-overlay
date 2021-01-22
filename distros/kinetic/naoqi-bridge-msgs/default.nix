
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, genmsg, geometry-msgs, message-generation, message-runtime, nav-msgs, sensor-msgs, std-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-kinetic-naoqi-bridge-msgs";
  version = "0.0.8";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/naoqi_bridge_msgs-release/archive/release/kinetic/naoqi_bridge_msgs/0.0.8-0.tar.gz";
    name = "0.0.8-0.tar.gz";
    sha256 = "7e96e6aa2ef96469124177d36896c66efd994d1f03fe84b0902370e90e9d2e39";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib-msgs genmsg geometry-msgs message-runtime nav-msgs sensor-msgs std-msgs trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The naoqi_bridge_msgs package provides custom messages for running Aldebaran's robot such as NAO and Pepper. See the packages nao_robot and pepper_robot for details.'';
    license = with lib.licenses; [ asl20 ];
  };
}
