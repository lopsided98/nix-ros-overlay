
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, dynamic-reconfigure, git, message-generation, message-runtime, mk, python3Packages, rospy, rostest, sound-play, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rostwitter";
  version = "2.1.26-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/rostwitter/2.1.26-1.tar.gz";
    name = "2.1.26-1.tar.gz";
    sha256 = "d079175b1083e07a5a03a15e4f0c0c7cbaeec2a6fdceb102524fdb5c4c22264e";
  };

  buildType = "catkin";
  buildInputs = [ actionlib actionlib-msgs catkin git message-generation mk ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ dynamic-reconfigure message-runtime python3Packages.requests python3Packages.requests_oauthlib python3Packages.simplejson rospy sound-play std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rostwitter package'';
    license = with lib.licenses; [ "Apache" ];
  };
}
