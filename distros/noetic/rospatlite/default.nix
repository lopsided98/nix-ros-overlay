
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rospatlite";
  version = "2.1.31-r3";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/rospatlite/2.1.31-3.tar.gz";
    name = "2.1.31-3.tar.gz";
    sha256 = "ff1bed335d8b5f4d9e3e698e575fe2c53ee4b41b794ca44249682312a9292118";
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
