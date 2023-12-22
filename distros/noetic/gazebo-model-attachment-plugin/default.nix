
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo, gazebo-msgs, gazebo-ros, message-generation, message-runtime, roscpp, rospy, rostest }:
buildRosPackage {
  pname = "ros-noetic-gazebo-model-attachment-plugin";
  version = "1.0.2-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/boeing_gazebo_model_attachement_plugin-release/archive/release/noetic/gazebo_model_attachment_plugin/1.0.2-5.tar.gz";
    name = "1.0.2-5.tar.gz";
    sha256 = "6aecb715c040e6f475066da0c41a44369518ecc8bcf36f39da4e465f97338f00";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ gazebo gazebo-msgs gazebo-ros message-generation message-runtime roscpp rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Model Attachment Plugin'';
    license = with lib.licenses; [ asl20 ];
  };
}
