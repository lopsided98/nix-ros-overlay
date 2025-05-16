
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, kakasi, nkf, rostest, sound-play }:
buildRosPackage {
  pname = "ros-noetic-aques-talk";
  version = "2.1.31-r3";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/aques_talk/2.1.31-3.tar.gz";
    name = "2.1.31-3.tar.gz";
    sha256 = "6174a2115531da2ac3bd09ea34f6c053595d3ad4986ed83b362b9ada60aba460";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ kakasi nkf sound-play ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "ROS interface aques_talk demo program";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
