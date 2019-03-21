
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, pythonPackages, actionlib, rospy, dynamic-reconfigure, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-homer-tts";
  version = "1.0.29";

  src = fetchurl {
    url = https://gitlab.uni-koblenz.de/robbie/homer_tts-release/repository/archive.tar.gz?ref=release/kinetic/homer_tts/1.0.29-0;
    sha256 = "29c653c5625de780c20cf3e416c9211b0bac19f3ece308604a6fc0eae64ac555";
  };

  propagatedBuildInputs = [ pythonPackages.pyaudio actionlib-msgs actionlib rospy dynamic-reconfigure roscpp ];
  nativeBuildInputs = [ catkin actionlib pythonPackages.pyaudio actionlib-msgs dynamic-reconfigure rospy pythonPackages.catkin-pkg roscpp ];

  meta = {
    description = ''The homer_tts package'';
    #license = lib.licenses.WTF;
  };
}
