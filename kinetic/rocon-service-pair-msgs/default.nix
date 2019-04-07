
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, uuid-msgs, message-generation, message-runtime, rospy }:
buildRosPackage {
  pname = "ros-kinetic-rocon-service-pair-msgs";
  version = "0.9.0-r1";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/rocon_msgs-release/archive/release/kinetic/rocon_service_pair_msgs/0.9.0-1.tar.gz;
    sha256 = "8e43ccdea25c6f671cc8e33a5ef6b30438bc470676d39b36a043dd9c3a8ce67c";
  };

  buildInputs = [ uuid-msgs message-generation ];
  propagatedBuildInputs = [ uuid-msgs message-runtime rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Paired pubsubs generators for non-blocking services.'';
    #license = lib.licenses.BSD;
  };
}
