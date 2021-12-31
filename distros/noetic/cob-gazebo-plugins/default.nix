
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo, gazebo-ros, roscpp }:
buildRosPackage {
  pname = "ros-noetic-cob-gazebo-plugins";
  version = "0.7.6-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_gazebo_plugins-release/archive/release/noetic/cob_gazebo_plugins/0.7.6-1.tar.gz";
    name = "0.7.6-1.tar.gz";
    sha256 = "96c90d97757244d423ef5e969a25ba2ef054db9d2adf6c8068bedd4efecb4280";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo gazebo-ros roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Additional gazebo plugins used with Care-O-bot'';
    license = with lib.licenses; [ asl20 ];
  };
}
