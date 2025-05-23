
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, catkin-virtualenv, message-generation, message-runtime, roslaunch, rospy, rostest }:
buildRosPackage {
  pname = "ros-noetic-gdrive-ros";
  version = "2.1.31-r4";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/gdrive_ros/2.1.31-4.tar.gz";
    name = "2.1.31-4.tar.gz";
    sha256 = "a9bd6e413097541ce516402ee9c822bb606a3b5bdd48af52879a3823387d1ff0";
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
