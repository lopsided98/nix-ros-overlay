
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, catkin, actionlib-msgs, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-play-motion-msgs";
  version = "0.4.5";

  src = fetchurl {
    url = "https://github.com/pal-gbp/play_motion-release2/archive/release/kinetic/play_motion_msgs/0.4.5-0.tar.gz";
    name = "0.4.5-0.tar.gz";
    sha256 = "a07eb3bde5b7712e0d494ea4d1ede6a845ed62f2cf4c6e7a16baaf3ee1bb0361";
  };

  buildType = "catkin";
  buildInputs = [ message-generation actionlib-msgs ];
  propagatedBuildInputs = [ message-runtime actionlib-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages, services and actions used by play_motion.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
