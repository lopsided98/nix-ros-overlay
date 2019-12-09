
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-runtime, catkin, rocon-std-msgs, message-generation, uuid-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rocon-interaction-msgs";
  version = "0.9.0-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_msgs-release/archive/release/kinetic/rocon_interaction_msgs/0.9.0-1.tar.gz";
    name = "0.9.0-1.tar.gz";
    sha256 = "165503fe80f4f85ddd4bd4d5f02579c4542bb3a88794b023befdb8b1cac247db";
  };

  buildType = "catkin";
  buildInputs = [ rocon-std-msgs message-generation uuid-msgs ];
  propagatedBuildInputs = [ rocon-std-msgs message-runtime uuid-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages used by rocon interactions.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
