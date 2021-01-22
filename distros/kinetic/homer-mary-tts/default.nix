
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, pythonPackages, roscpp, rospy }:
buildRosPackage {
  pname = "ros-kinetic-homer-mary-tts";
  version = "1.0.18-r1";

  src = fetchurl {
    url = "https://gitlab.uni-koblenz.de/robbie/homer_robot_face-release/repository/archive.tar.gz?ref=release/kinetic/homer_mary_tts/1.0.18-1";
    name = "archive.tar.gz";
    sha256 = "25077804fdec7a71ac9677c2952107c514ae41d2994e568d08578e36a90d8ed8";
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
