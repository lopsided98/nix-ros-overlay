
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, geometry-msgs, std-msgs, catkin, roslint, rospy, roscpp, rosbag, message-runtime, nav-msgs, rostest }:
buildRosPackage {
  pname = "ros-kinetic-bagger";
  version = "0.1.3-r2";

  src = fetchurl {
    url = "https://github.com/squarerobot/bagger-release/archive/release/kinetic/bagger/0.1.3-2.tar.gz";
    name = "0.1.3-2.tar.gz";
    sha256 = "aba96b75ed79895ac7af81d1865b4e0e4b124ae136dff617eeb237a3a6936c1d";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs roslint roscpp message-generation rostest ];
  checkInputs = [ geometry-msgs nav-msgs ];
  propagatedBuildInputs = [ std-msgs rospy roscpp rosbag message-runtime rostest ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An application used to systematically record rosbags'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
