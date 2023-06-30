
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, catkin-virtualenv, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-noetic-nfc-ros";
  version = "2.1.26-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/nfc_ros/2.1.26-1.tar.gz";
    name = "2.1.26-1.tar.gz";
    sha256 = "9fb85f5286e639935d7de19ed9b900633b3ef4799cf5522120dbbfbec510afdf";
  };

  buildType = "catkin";
  buildInputs = [ catkin catkin-virtualenv ];
  propagatedBuildInputs = [ message-generation message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The nfc_ros package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
