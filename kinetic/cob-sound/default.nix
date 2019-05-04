
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, actionlib-msgs, vlc, catkin, roscpp, cob-srvs, message-generation, actionlib, message-runtime, rospy, std-msgs, diagnostic-msgs, visualization-msgs, alsaOss }:
buildRosPackage {
  pname = "ros-kinetic-cob-sound";
  version = "0.6.13";

  src = fetchurl {
    url = https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_sound/0.6.13-0.tar.gz;
    sha256 = "e5abd3373802e17634932bb1508312fcb66e828711b7384f20610b3bbb2c3f8b";
  };

  buildInputs = [ std-srvs actionlib-msgs vlc roscpp cob-srvs message-generation actionlib std-msgs diagnostic-msgs visualization-msgs ];
  propagatedBuildInputs = [ std-srvs actionlib-msgs vlc rospy cob-srvs message-runtime visualization-msgs actionlib std-msgs diagnostic-msgs roscpp alsaOss ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package implements a sound play module using text2wave and aplay through python.'';
    license = with lib.licenses; [ asl20 ];
  };
}
