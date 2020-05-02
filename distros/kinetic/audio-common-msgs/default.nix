
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-audio-common-msgs";
  version = "0.3.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/audio_common-release/archive/release/kinetic/audio_common_msgs/0.3.5-1.tar.gz";
    name = "0.3.5-1.tar.gz";
    sha256 = "64fc801e022b581f2d0089b4c9354c1985bc59848a49238d8cc619aa5da8538e";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for transmitting audio via ROS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
