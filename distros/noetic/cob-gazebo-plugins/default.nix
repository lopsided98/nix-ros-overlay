
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo, gazebo-ros, roscpp }:
buildRosPackage {
  pname = "ros-noetic-cob-gazebo-plugins";
  version = "0.7.7-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_gazebo_plugins-release/archive/release/noetic/cob_gazebo_plugins/0.7.7-1.tar.gz";
    name = "0.7.7-1.tar.gz";
    sha256 = "41e7a4febc5a00ef86017729f5bf1b89896fa406578b7903cc388dc715606e15";
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
