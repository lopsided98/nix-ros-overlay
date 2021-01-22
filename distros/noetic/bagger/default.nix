
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, nav-msgs, rosbag, roscpp, roslint, rospy, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-bagger";
  version = "0.1.3-r4";

  src = fetchurl {
    url = "https://github.com/squarerobot/bagger-release/archive/release/noetic/bagger/0.1.3-4.tar.gz";
    name = "0.1.3-4.tar.gz";
    sha256 = "acd129c677edeac531445ce4b48eb37e89e0f94e67ad2b45e7705a305a167ed3";
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
