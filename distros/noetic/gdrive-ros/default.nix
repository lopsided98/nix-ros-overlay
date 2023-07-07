
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, catkin-virtualenv, message-generation, message-runtime, rospy, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-gdrive-ros";
  version = "2.1.26-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/gdrive_ros/2.1.26-1.tar.gz";
    name = "2.1.26-1.tar.gz";
    sha256 = "aeb66f26a0526ef1f136b938b1f2c8914e7052230f962d31ff814dda012a851c";
  };

  buildType = "catkin";
  buildInputs = [ catkin catkin-virtualenv message-generation std-msgs ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ message-runtime rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Google drive upload and download package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
