
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, kakasi, nkf, rostest, sound-play }:
buildRosPackage {
  pname = "ros-noetic-aques-talk";
  version = "2.1.28-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/aques_talk/2.1.28-1.tar.gz";
    name = "2.1.28-1.tar.gz";
    sha256 = "f258fe9eed04264021f915dbb599d863beb0174e970d048febafd0c21fa13887";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ kakasi nkf sound-play ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS interface aques_talk demo program'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
