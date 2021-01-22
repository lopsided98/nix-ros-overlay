
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-op3-offset-tuner-msgs";
  version = "0.1.1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-OP3-msgs-release/archive/release/kinetic/op3_offset_tuner_msgs/0.1.1-0.tar.gz";
    name = "0.1.1-0.tar.gz";
    sha256 = "bb1ae01bab217767063e9efc419103fa3245355a8d3215b9d7734e646366fe87";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package includes ROS messages and services for the ROBOTIS OP3 packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
