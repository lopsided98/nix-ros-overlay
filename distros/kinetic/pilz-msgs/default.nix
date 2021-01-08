
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, moveit-msgs }:
buildRosPackage {
  pname = "ros-kinetic-pilz-msgs";
  version = "0.3.10-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/kinetic/pilz_msgs/0.3.10-1.tar.gz";
    name = "0.3.10-1.tar.gz";
    sha256 = "82cf9d001dc5016ef37ba59bb4454858b32e967f2846e912cbec553fef2b3ae6";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime moveit-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pilz_msgs package'';
    license = with lib.licenses; [ asl20 ];
  };
}
