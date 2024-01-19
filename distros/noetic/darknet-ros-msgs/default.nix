
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, geometry-msgs, message-generation, message-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-darknet-ros-msgs";
  version = "1.1.5-r1";

  src = fetchurl {
    url = "https://github.com/leggedrobotics/darknet_ros-release/archive/release/noetic/darknet_ros_msgs/1.1.5-1.tar.gz";
    name = "1.1.5-1.tar.gz";
    sha256 = "ffb4a63ef48a67dc35cf7887b0c120951ad3b293bf4e0f259660ff7e3d26e29d";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib-msgs geometry-msgs message-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Darknet is an open source neural network framework that runs on CPU and GPU. You only look once (YOLO) is a state-of-the-art, real-time object detection system.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
