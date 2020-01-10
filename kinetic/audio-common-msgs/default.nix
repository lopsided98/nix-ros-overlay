
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-audio-common-msgs";
  version = "0.3.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/audio_common-release/archive/release/kinetic/audio_common_msgs/0.3.3-0.tar.gz";
    name = "0.3.3-0.tar.gz";
    sha256 = "9fbd274d1195d986f61791de4e542eba2872e8a98618e3ba1494acc252239d72";
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
