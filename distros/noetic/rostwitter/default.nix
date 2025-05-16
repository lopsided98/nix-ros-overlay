
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, dynamic-reconfigure, git, message-generation, message-runtime, mk, python3Packages, rospy, rostest, sound-play, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rostwitter";
  version = "2.1.31-r3";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/rostwitter/2.1.31-3.tar.gz";
    name = "2.1.31-3.tar.gz";
    sha256 = "a0a6855ee073497b4d75c89847d1eb0a06d163528118816e33fa836cfca24491";
  };

  buildType = "catkin";
  buildInputs = [ actionlib catkin git message-generation mk ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ actionlib-msgs dynamic-reconfigure message-runtime python3Packages.requests python3Packages.requests_oauthlib python3Packages.simplejson rospy sound-play std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The rostwitter package";
    license = with lib.licenses; [ "Apache" ];
  };
}
