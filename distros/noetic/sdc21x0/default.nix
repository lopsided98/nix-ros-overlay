
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-sdc21x0";
  version = "1.1.8-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mir_robot-release/archive/release/noetic/sdc21x0/1.1.8-1.tar.gz";
    name = "1.1.8-1.tar.gz";
    sha256 = "6c334fc5e428f23cad70a71fd6ac576c7b34f83900e0fe692ddf5d5334065d70";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Message definitions for the sdc21x0 motor controller";
    license = with lib.licenses; [ bsd3 ];
  };
}
