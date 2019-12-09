
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamic-reconfigure, actionlib, pythonPackages, catkin, actionlib-msgs, roscpp, rospy }:
buildRosPackage {
  pname = "ros-kinetic-homer-tts";
  version = "1.0.29";

  src = fetchurl {
    url = "https://gitlab.uni-koblenz.de/robbie/homer_tts-release/repository/archive.tar.gz?ref=release/kinetic/homer_tts/1.0.29-0";
    name = "archive.tar.gz";
    sha256 = "29c653c5625de780c20cf3e416c9211b0bac19f3ece308604a6fc0eae64ac555";
  };

  buildType = "catkin";
  buildInputs = [ dynamic-reconfigure pythonPackages.pyaudio actionlib actionlib-msgs pythonPackages.catkin-pkg roscpp rospy ];
  propagatedBuildInputs = [ dynamic-reconfigure pythonPackages.pyaudio actionlib actionlib-msgs roscpp rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The homer_tts package'';
    license = with lib.licenses; [ "WTF" ];
  };
}
