
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-gcloud-speech-msgs";
  version = "0.0.5";

  src = fetchurl {
    url = "https://github.com/CogRobRelease/gcloud_speech-release/archive/release/kinetic/gcloud_speech_msgs/0.0.5-0.tar.gz";
    name = "0.0.5-0.tar.gz";
    sha256 = "5f10526be93f5e409499e384edeace0babdfcbfc93a7ff226db7e8b715d8acd5";
  };

  buildType = "catkin";
  buildInputs = [ actionlib actionlib-msgs message-generation ];
  propagatedBuildInputs = [ message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS message definitions for gcloud_speech and relevant packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
