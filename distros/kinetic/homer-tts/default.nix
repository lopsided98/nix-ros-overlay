
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, dynamic-reconfigure, pythonPackages, roscpp, rospy }:
buildRosPackage {
  pname = "ros-kinetic-homer-tts";
  version = "1.0.29";

  src = fetchurl {
    url = "https://gitlab.uni-koblenz.de/robbie/homer_tts-release/-/archive/release/kinetic/homer_tts/1.0.29-0/homer_tts-release-release-kinetic-homer_tts-1.0.29-0.tar.gz";
    name = "homer_tts-release-release-kinetic-homer_tts-1.0.29-0.tar.gz";
    sha256 = "e8141568b40781c5e7ae02a50a28a66e5c51c9d9f8b360d5820a78efdf8d7361";
  };

  buildType = "catkin";
  buildInputs = [ pythonPackages.catkin-pkg ];
  propagatedBuildInputs = [ actionlib actionlib-msgs dynamic-reconfigure pythonPackages.pyaudio roscpp rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The homer_tts package'';
    license = with lib.licenses; [ "WTF" ];
  };
}
