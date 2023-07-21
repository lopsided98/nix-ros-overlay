
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, catkin-virtualenv, message-generation, message-runtime, roslaunch, rospy, rostest }:
buildRosPackage {
  pname = "ros-noetic-gdrive-ros";
  version = "2.1.27-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/gdrive_ros/2.1.27-1.tar.gz";
    name = "2.1.27-1.tar.gz";
    sha256 = "af09b8d8c28bed55ac31448e17cd241f1392bbe9173e796edf82378bd2ebc58e";
  };

  buildType = "catkin";
  buildInputs = [ catkin catkin-virtualenv message-generation ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ message-runtime rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Google drive upload and download package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
