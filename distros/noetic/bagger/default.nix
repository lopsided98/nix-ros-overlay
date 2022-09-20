
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, nav-msgs, rosbag, roscpp, roslint, rospy, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-bagger";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/squarerobot/bagger-release/archive/release/noetic/bagger/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "781c7b23f9e302fabb4b9067e62e3ef8158a8ea4f3a2276fe5ce03530884eed3";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation roslint ];
  checkInputs = [ geometry-msgs nav-msgs ];
  propagatedBuildInputs = [ message-runtime rosbag roscpp rospy rostest std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An application used to systematically record rosbags'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
