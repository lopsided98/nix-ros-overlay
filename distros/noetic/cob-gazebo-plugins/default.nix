
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo, gazebo-ros, roscpp }:
buildRosPackage {
  pname = "ros-noetic-cob-gazebo-plugins";
  version = "0.7.8-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_gazebo_plugins-release/archive/release/noetic/cob_gazebo_plugins/0.7.8-1.tar.gz";
    name = "0.7.8-1.tar.gz";
    sha256 = "d813d5c889a0fbeb4bbc95ae75de255e74ad93dbd1a3de227279c2e4f0d3e8aa";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo gazebo-ros roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Additional gazebo plugins used with Care-O-bot'';
    license = with lib.licenses; [ asl20 ];
  };
}
