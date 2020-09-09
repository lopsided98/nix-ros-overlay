
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rospatlite";
  version = "2.1.21-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/rospatlite/2.1.21-1.tar.gz";
    name = "2.1.21-1.tar.gz";
    sha256 = "cde793e44f737363d0b47724d409efc6de07264db35ffe0029cccbffd5b19e5b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rospatlite'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
