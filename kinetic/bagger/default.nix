
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, rosbag, catkin, rostest, message-generation, nav-msgs, message-runtime, rospy, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-bagger";
  version = "0.1.3-r2";

  src = fetchurl {
    url = https://github.com/squarerobot/bagger-release/archive/release/kinetic/bagger/0.1.3-2.tar.gz;
    sha256 = "aba96b75ed79895ac7af81d1865b4e0e4b124ae136dff617eeb237a3a6936c1d";
  };

  buildInputs = [ roslint rostest message-generation std-msgs roscpp ];
  checkInputs = [ nav-msgs geometry-msgs ];
  propagatedBuildInputs = [ rosbag rostest message-runtime rospy std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An application used to systematically record rosbags'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
