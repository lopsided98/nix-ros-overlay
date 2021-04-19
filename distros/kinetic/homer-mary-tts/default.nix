
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, pythonPackages, roscpp, rospy }:
buildRosPackage {
  pname = "ros-kinetic-homer-mary-tts";
  version = "1.0.18-r1";

  src = fetchurl {
    url = "https://gitlab.uni-koblenz.de/robbie/homer_robot_face-release/-/archive/release/kinetic/homer_mary_tts/1.0.18-1/homer_robot_face-release-release-kinetic-homer_mary_tts-1.0.18-1.tar.gz";
    name = "homer_robot_face-release-release-kinetic-homer_mary_tts-1.0.18-1.tar.gz";
    sha256 = "cd1a4bf1d7f483af3bbb8461edddb259415fe55b668a7f00df259a6df5a67bb4";
  };

  buildType = "catkin";
  buildInputs = [ pythonPackages.catkin-pkg ];
  propagatedBuildInputs = [ dynamic-reconfigure pythonPackages.pyaudio roscpp rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The homer_mary_tts package'';
    license = with lib.licenses; [ "TODO" ];
  };
}
