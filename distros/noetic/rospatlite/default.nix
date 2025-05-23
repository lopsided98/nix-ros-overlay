
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rospatlite";
  version = "2.1.31-r4";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/rospatlite/2.1.31-4.tar.gz";
    name = "2.1.31-4.tar.gz";
    sha256 = "9f50a9c5110a76e0a19021e1311f09aa85042256b5295f4d25b3ff0391a8adb9";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "rospatlite";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
