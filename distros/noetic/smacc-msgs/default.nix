
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-smacc-msgs";
  version = "0.9.7-r1";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/smacc-release/archive/release/noetic/smacc_msgs/0.9.7-1.tar.gz";
    name = "0.9.7-1.tar.gz";
    sha256 = "79cd5d5de9e4efc08814cd8dd19e8fd8ae6c603d50ab01f1e35473e92cb0fa0b";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''this package contains a set of messages that are used by the introspection
    interfaces for smacc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
