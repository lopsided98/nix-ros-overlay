
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, nav-msgs, rosbag, roscpp, roslint, rospy, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-bagger";
  version = "0.1.5-r2";

  src = fetchurl {
    url = "https://github.com/squarerobot/bagger-release/archive/release/noetic/bagger/0.1.5-2.tar.gz";
    name = "0.1.5-2.tar.gz";
    sha256 = "0b88e82b919d03903e35ed19db982eb00235576a35834756f0b3152dbcbee207";
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
