
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, boost, catkin, message-generation, message-runtime, roscpp, rosnode, rospy, rostest, rosunit, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-sound-play";
  version = "0.3.11";

  src = fetchurl {
    url = "https://github.com/ros-gbp/audio_common-release/archive/release/noetic/sound_play/0.3.11.tar.gz";
    name = "0.3.11.tar.gz";
    sha256 = "sha256-Ve4AM/NQEmYcc6O8ujHTQ2dt2pI9+g0nniuXDgbGBkI=";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  checkInputs = [ rosnode rosunit ];
  propagatedBuildInputs = [ actionlib-msgs boost message-runtime roscpp rospy rostest std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS - sound_play provides a ROS node that translates commands on a ROS topic (robotsound) into sounds.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
