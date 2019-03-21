
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-concert-workflow-engine-msgs";
  version = "0.9.0-r1";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/rocon_msgs-release/archive/release/kinetic/concert_workflow_engine_msgs/0.9.0-1.tar.gz;
    sha256 = "601e6f5dff3ab0b715aa5adb87c5a14de6e91fd9df39f82671b50ac98e1a8bb4";
  };

  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ std-msgs catkin message-generation ];

  meta = {
    description = ''Messages used by workflow engine'';
    #license = lib.licenses.BSD;
  };
}
