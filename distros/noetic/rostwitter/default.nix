
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, dynamic-reconfigure, git, message-generation, message-runtime, mk, python3Packages, rospy, rostest, sound-play, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rostwitter";
  version = "2.1.31-r4";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/rostwitter/2.1.31-4.tar.gz";
    name = "2.1.31-4.tar.gz";
    sha256 = "caf761a6dca1a16d456138dd1d87e9f648f4d52087bfe589be2ebaa4369927f2";
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
