
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, boost, catkin, cv-bridge, darknet-ros-msgs, image-transport, message-generation, nodelet, opencv, roscpp, rospy, rostest, sensor-msgs, std-msgs, wget, xorg }:
buildRosPackage {
  pname = "ros-noetic-darknet-ros";
  version = "1.1.5-r1";

  src = fetchurl {
    url = "https://github.com/leggedrobotics/darknet_ros-release/archive/release/noetic/darknet_ros/1.1.5-1.tar.gz";
    name = "1.1.5-1.tar.gz";
    sha256 = "1ab3b50195ea9537bf73b5c9e756bece85da94e0f77792314699e8ed9c607bd1";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest wget ];
  propagatedBuildInputs = [ actionlib boost cv-bridge darknet-ros-msgs image-transport message-generation nodelet opencv roscpp rospy sensor-msgs std-msgs xorg.libX11 xorg.libXext xorg.libXtst ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Darknet is an open source neural network framework that runs on CPU and GPU. You only look once (YOLO) is a state-of-the-art, real-time object detection system.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
