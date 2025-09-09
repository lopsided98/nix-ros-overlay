
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, catkin-virtualenv, message-generation, message-runtime, rostest }:
buildRosPackage {
  pname = "ros-noetic-nfc-ros";
  version = "2.1.31-r3";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/nfc_ros/2.1.31-3.tar.gz";
    name = "2.1.31-3.tar.gz";
    sha256 = "85f5c1a150859d08a9bab486d8d9df035658b3eb49c947ff77ac7334ce509ccc";
  };

  buildType = "catkin";
  buildInputs = [ catkin catkin-virtualenv ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ message-generation message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The nfc_ros package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
