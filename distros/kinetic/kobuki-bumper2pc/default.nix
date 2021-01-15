
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, kobuki-msgs, nodelet, pluginlib, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-kobuki-bumper2pc";
  version = "0.7.6";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/kobuki-release/archive/release/kinetic/kobuki_bumper2pc/0.7.6-0.tar.gz";
    name = "0.7.6-0.tar.gz";
    sha256 = "562175272121859d7332becc7eb3c297ae4f115c320542ed4b23f2e922f545d4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ kobuki-msgs nodelet pluginlib roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Bumper/cliff to pointcloud nodelet:
    Publish bumpers and cliff sensors events as points in a pointcloud, so navistack can use them
    for poor-man navigation. Implemented as a nodelet intended to run together with kobuki_node.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
