
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-thormang3-offset-tuner-msgs";
  version = "0.3.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-msgs-release/archive/release/kinetic/thormang3_offset_tuner_msgs/0.3.0-0.tar.gz";
    name = "0.3.0-0.tar.gz";
    sha256 = "0caded3d1ef7ad5ed7a3252e6f7d05dfaf22e0bc036c68a339250cc8122a3562";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is a set of messages and services for using thormang3_offset_tuner.'';
    license = with lib.licenses; [ asl20 ];
  };
}
