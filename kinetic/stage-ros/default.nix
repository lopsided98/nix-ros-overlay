
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, boost, geometry-msgs, std-msgs, std-srvs, tf, catkin, roscpp, stage, nav-msgs, rostest }:
buildRosPackage {
  pname = "ros-kinetic-stage-ros";
  version = "1.7.5";

  src = fetchurl {
    url = "https://github.com/ros-gbp/stage_ros-release/archive/release/kinetic/stage_ros/1.7.5-0.tar.gz";
    name = "1.7.5-0.tar.gz";
    sha256 = "aa282c245ee3f4c0ac0fb9d169f3f5c3c7dbb9ff5d57fe7c69eeec88c2fe4e9f";
  };

  buildType = "catkin";
  buildInputs = [ boost sensor-msgs geometry-msgs std-msgs std-srvs tf roscpp stage nav-msgs rostest ];
  propagatedBuildInputs = [ boost sensor-msgs geometry-msgs std-msgs std-srvs tf roscpp stage nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides ROS specific hooks for stage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
