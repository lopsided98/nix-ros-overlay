
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, kakasi, nkf, rostest, sound-play }:
buildRosPackage {
  pname = "ros-noetic-aques-talk";
  version = "2.1.27-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/aques_talk/2.1.27-1.tar.gz";
    name = "2.1.27-1.tar.gz";
    sha256 = "76b616b52bc3a6cc5cd1fa42ab888720cd97fb4f4c8d03a181122a088d42d24f";
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
