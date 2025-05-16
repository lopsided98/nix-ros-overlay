
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, catkin-virtualenv, libffi, message-generation, message-runtime, openssl, rostest }:
buildRosPackage {
  pname = "ros-noetic-sesame-ros";
  version = "2.1.31-r3";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/sesame_ros/2.1.31-3.tar.gz";
    name = "2.1.31-3.tar.gz";
    sha256 = "a28d19fae1ee79682ef089d70250eef6c7f55ddc25e880c7c43b5c0eb18e5153";
  };

  buildType = "catkin";
  buildInputs = [ catkin catkin-virtualenv libffi message-generation openssl ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "ROS API for Sesame smart lock";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
