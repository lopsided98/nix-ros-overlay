
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, kobuki-msgs, pluginlib, sensor-msgs, catkin, roscpp, nodelet }:
buildRosPackage {
  pname = "ros-kinetic-kobuki-bumper2pc";
  version = "0.7.6";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/kobuki-release/archive/release/kinetic/kobuki_bumper2pc/0.7.6-0.tar.gz";
    name = "0.7.6-0.tar.gz";
    sha256 = "562175272121859d7332becc7eb3c297ae4f115c320542ed4b23f2e922f545d4";
  };

  buildType = "catkin";
  buildInputs = [ kobuki-msgs pluginlib sensor-msgs roscpp nodelet ];
  propagatedBuildInputs = [ kobuki-msgs pluginlib sensor-msgs nodelet roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Bumper/cliff to pointcloud nodelet:
    Publish bumpers and cliff sensors events as points in a pointcloud, so navistack can use them
    for poor-man navigation. Implemented as a nodelet intended to run together with kobuki_node.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
