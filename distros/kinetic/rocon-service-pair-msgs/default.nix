
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, rospy, uuid-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rocon-service-pair-msgs";
  version = "0.9.0-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_msgs-release/archive/release/kinetic/rocon_service_pair_msgs/0.9.0-1.tar.gz";
    name = "0.9.0-1.tar.gz";
    sha256 = "8e43ccdea25c6f671cc8e33a5ef6b30438bc470676d39b36a043dd9c3a8ce67c";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime rospy uuid-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Paired pubsubs generators for non-blocking services.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
