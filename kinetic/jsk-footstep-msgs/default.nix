
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-jsk-footstep-msgs";
  version = "4.3.1";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_common_msgs-release/archive/release/kinetic/jsk_footstep_msgs/4.3.1-0.tar.gz;
    sha256 = "2632bea84709f7eb64f4d5df99829d46495d51c4b299819656b8d64ef1e09e90";
  };

  propagatedBuildInputs = [ message-runtime actionlib-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin message-generation actionlib-msgs geometry-msgs ];

  meta = {
    description = ''jsk_footstep_msgs'';
    #license = lib.licenses.BSD;
  };
}
