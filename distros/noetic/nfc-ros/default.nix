
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, catkin-virtualenv, message-generation, message-runtime, rostest }:
buildRosPackage {
  pname = "ros-noetic-nfc-ros";
  version = "2.1.28-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/nfc_ros/2.1.28-1.tar.gz";
    name = "2.1.28-1.tar.gz";
    sha256 = "8fa2ac33f60bae2c91ab31481b3713c43437030d3caa62809a58377ed3b3ae29";
  };

  buildType = "catkin";
  buildInputs = [ catkin catkin-virtualenv ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ message-generation message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The nfc_ros package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
