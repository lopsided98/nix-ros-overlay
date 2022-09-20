
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-play-motion-msgs";
  version = "0.4.8-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/play_motion-release2/archive/release/melodic/play_motion_msgs/0.4.8-1.tar.gz";
    name = "0.4.8-1.tar.gz";
    sha256 = "7e6f882bf2331299faacfb24f7b1c8fab04dc7588e3226421daac237382d3a0c";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages, services and actions used by play_motion.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
