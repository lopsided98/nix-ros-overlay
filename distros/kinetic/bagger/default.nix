
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, nav-msgs, rosbag, roscpp, roslint, rospy, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-bagger";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/squarerobot/bagger-release/archive/release/kinetic/bagger/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "02067fdb76fe28e090caec3f192e2ad3c1301329d193dfb8d20cc95bd8273d29";
  };

  buildType = "catkin";
  buildInputs = [ message-generation roslint ];
  checkInputs = [ geometry-msgs nav-msgs ];
  propagatedBuildInputs = [ message-runtime rosbag roscpp rospy rostest std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An application used to systematically record rosbags'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
