
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rospatlite";
  version = "2.1.26-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/rospatlite/2.1.26-1.tar.gz";
    name = "2.1.26-1.tar.gz";
    sha256 = "5c56f165128c3980917fee6417253fc26a983e9fe9e645ca137bb733b66fc7ff";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rospatlite'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
