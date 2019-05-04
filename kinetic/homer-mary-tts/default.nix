
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rospy, dynamic-reconfigure, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-homer-mary-tts";
  version = "1.0.18-r1";

  src = fetchurl {
    url = https://gitlab.uni-koblenz.de/robbie/homer_robot_face-release/repository/archive.tar.gz?ref=release/kinetic/homer_mary_tts/1.0.18-1;
    sha256 = "25077804fdec7a71ac9677c2952107c514ae41d2994e568d08578e36a90d8ed8";
  };

  buildInputs = [ rospy pythonPackages.catkin-pkg roscpp dynamic-reconfigure ];
  propagatedBuildInputs = [ rospy roscpp pythonPackages.pyaudio dynamic-reconfigure ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The homer_mary_tts package'';
    license = with lib.licenses; [ "TODO" ];
  };
}
