
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, moveit-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-manipulation-msgs";
  version = "0.7.6-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_manipulation-release/archive/release/noetic/cob_manipulation_msgs/0.7.6-1.tar.gz";
    name = "0.7.6-1.tar.gz";
    sha256 = "f41e5d52ca49b9b4b7bc8873311574bc23ef5e3c99bbc38e72f76f6dc84ddb25";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib-msgs message-runtime moveit-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for cob_manipulation'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
