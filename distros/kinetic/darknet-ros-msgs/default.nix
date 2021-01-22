
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, geometry-msgs, message-generation, message-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-darknet-ros-msgs";
  version = "1.1.4";

  src = fetchurl {
    url = "https://github.com/leggedrobotics/darknet_ros-release/archive/release/kinetic/darknet_ros_msgs/1.1.4-0.tar.gz";
    name = "1.1.4-0.tar.gz";
    sha256 = "2088c1b767d52a39c01cf1271de48634287963f13749eec570e9a4521f32986b";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib-msgs geometry-msgs message-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Darknet is an open source neural network framework that runs on CPU and GPU. You only look once (YOLO) is a state-of-the-art, real-time object detection system.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
