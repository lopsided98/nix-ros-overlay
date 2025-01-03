
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, moveit-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-manipulation-msgs";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_manipulation-release/archive/release/noetic/cob_manipulation_msgs/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "3dd9af950c774c0ec9536ebcb8ed85400d456ee4c74fdea51d09839b7be0913e";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib-msgs message-runtime moveit-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Messages for cob_manipulation";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
