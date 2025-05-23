
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, kakasi, nkf, rostest, sound-play }:
buildRosPackage {
  pname = "ros-noetic-aques-talk";
  version = "2.1.31-r4";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/aques_talk/2.1.31-4.tar.gz";
    name = "2.1.31-4.tar.gz";
    sha256 = "c3b97aa0cb9bfcd74ed8bcdacbb6c2dfaed1ff00365aa2f2215ca63ee614b277";
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
