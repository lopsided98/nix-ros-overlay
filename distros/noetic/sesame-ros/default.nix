
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, catkin-virtualenv, libffi, message-generation, message-runtime, openssl, rostest }:
buildRosPackage {
  pname = "ros-noetic-sesame-ros";
  version = "2.1.28-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/sesame_ros/2.1.28-1.tar.gz";
    name = "2.1.28-1.tar.gz";
    sha256 = "1fa819d4f445510464209b901faf4c71cdc738896c6d9c669b3d1d181b344d87";
  };

  buildType = "catkin";
  buildInputs = [ catkin catkin-virtualenv libffi message-generation openssl ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS API for Sesame smart lock'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
