
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospack }:
buildRosPackage {
  pname = "ros-noetic-rosbash";
  version = "1.15.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/noetic/rosbash/1.15.7-1.tar.gz";
    name = "1.15.7-1.tar.gz";
    sha256 = "ae342273fce13575f5b3c8b29355fc0cd70a0b36cfb7aef0b83391732acbcb13";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ catkin rospack ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Assorted shell commands for using ros with bash.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
