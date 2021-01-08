
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rosgraph-msgs";
  version = "1.11.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm_msgs-release/archive/release/kinetic/rosgraph_msgs/1.11.2-0.tar.gz";
    name = "1.11.2-0.tar.gz";
    sha256 = "c2f1c73750c45998279607f10a57c4bb75839e1872fbbc831acd7ea06c49aa9f";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages relating to the ROS Computation Graph. These are generally considered to be low-level messages that end users do not interact with.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
