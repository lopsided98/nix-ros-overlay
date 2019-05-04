
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, actionlib-msgs, vlc, catkin, roslib, message-generation, message-runtime, actionlib, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-cob-mimic";
  version = "0.6.13";

  src = fetchurl {
    url = https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_mimic/0.6.13-0.tar.gz;
    sha256 = "65816a3e00bf1196d38e919ff9f177c6991e17b8fe509dd4884965168f7ae2d9";
  };

  buildInputs = [ boost actionlib-msgs vlc roscpp message-generation actionlib roslib ];
  propagatedBuildInputs = [ boost actionlib-msgs vlc roscpp message-runtime actionlib roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package implements the Care-O-bot mimic'';
    license = with lib.licenses; [ asl20 ];
  };
}
