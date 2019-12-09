
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-runtime, catkin, rospy, message-generation, uuid-msgs }:
buildRosPackage {
  pname = "ros-melodic-rocon-service-pair-msgs";
  version = "0.9.0";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_msgs-release/archive/release/melodic/rocon_service_pair_msgs/0.9.0-0.tar.gz";
    name = "0.9.0-0.tar.gz";
    sha256 = "28ec43f8619ea41e4562b0940174cf0cf8ff4c331ac0cda0dc9f1fb2dad5b0b6";
  };

  buildType = "catkin";
  buildInputs = [ message-generation uuid-msgs ];
  propagatedBuildInputs = [ rospy uuid-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Paired pubsubs generators for non-blocking services.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
