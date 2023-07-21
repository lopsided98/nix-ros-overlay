
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, dynamic-reconfigure, git, message-generation, message-runtime, mk, python3Packages, rospy, rostest, sound-play, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rostwitter";
  version = "2.1.27-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/rostwitter/2.1.27-1.tar.gz";
    name = "2.1.27-1.tar.gz";
    sha256 = "207152751d959a166dced4673622f25c9abb4f8418e4f4bf33db3931f9f6a8f8";
  };

  buildType = "catkin";
  buildInputs = [ actionlib catkin git message-generation mk ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ actionlib-msgs dynamic-reconfigure message-runtime python3Packages.requests python3Packages.requests_oauthlib python3Packages.simplejson rospy sound-play std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rostwitter package'';
    license = with lib.licenses; [ "Apache" ];
  };
}
