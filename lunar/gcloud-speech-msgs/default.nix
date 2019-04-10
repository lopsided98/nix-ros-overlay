
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, actionlib }:
buildRosPackage {
  pname = "ros-lunar-gcloud-speech-msgs";
  version = "0.0.5-r1";

  src = fetchurl {
    url = https://github.com/CogRobRelease/gcloud_speech-release/archive/release/lunar/gcloud_speech_msgs/0.0.5-1.tar.gz;
    sha256 = "5e976132803f8a77a3d4bc1bd6df1cd47c63cfa36f8e07ed4482b51a703ec0da";
  };

  buildInputs = [ message-generation actionlib-msgs actionlib ];
  propagatedBuildInputs = [ message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS message definitions for gcloud_speech and relevant packages.'';
    #license = lib.licenses.BSD;
  };
}
