
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, catkin-virtualenv, message-generation, message-runtime, roslaunch, rospy, rostest }:
buildRosPackage {
  pname = "ros-noetic-gdrive-ros";
  version = "2.1.31-r3";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/gdrive_ros/2.1.31-3.tar.gz";
    name = "2.1.31-3.tar.gz";
    sha256 = "514f89ed77d467b979c6e9049a1cdc65f63e8f5a626330f35824fd716fde147a";
  };

  buildType = "catkin";
  buildInputs = [ catkin catkin-virtualenv message-generation ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ message-runtime rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Google drive upload and download package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
