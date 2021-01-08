
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-rosserial-msgs";
  version = "0.7.7";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosserial-release/archive/release/kinetic/rosserial_msgs/0.7.7-0.tar.gz";
    name = "0.7.7-0.tar.gz";
    sha256 = "0f730c31d4406ede1751d3c4ec400ebd6a287e0527eeecf1746a092ba0ac36dd";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for automatic topic configuration using rosserial.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
