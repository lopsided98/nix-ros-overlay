
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, catkin-virtualenv, message-generation, message-runtime, roslaunch, rospy, rostest }:
buildRosPackage {
  pname = "ros-noetic-gdrive-ros";
  version = "2.1.28-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/gdrive_ros/2.1.28-1.tar.gz";
    name = "2.1.28-1.tar.gz";
    sha256 = "9d7a30004e5b0a7ea433034bba7458972fb4abd33c1eceec94e2399ae4b47665";
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
